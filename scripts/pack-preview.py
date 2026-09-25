#!/usr/bin/env python3
"""Package the reachable generated site for static preview hosting."""

from __future__ import annotations

import os
import re
import shutil
import sys
import tempfile
import zipfile
from collections import deque
from html.parser import HTMLParser
from pathlib import Path, PurePosixPath
from urllib.parse import unquote, urljoin, urlsplit


CSS_URL_RE = re.compile(r"url\(\s*(['\"]?)(.*?)\1\s*\)", re.IGNORECASE)
CSS_IMPORT_RE = re.compile(r"@import\s+(?:url\()?\s*['\"]([^'\"]+)", re.IGNORECASE)


class ReferenceParser(HTMLParser):
    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.references: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        values = dict(attrs)
        attribute = {
            "a": "href",
            "audio": "src",
            "iframe": "src",
            "img": "src",
            "link": "href",
            "object": "data",
            "script": "src",
            "source": "src",
            "video": "src",
        }.get(tag)
        if attribute and values.get(attribute):
            self.references.append(values[attribute] or "")
        if tag == "video" and values.get("poster"):
            self.references.append(values["poster"] or "")
        if values.get("srcset"):
            self.references.extend(
                item.strip().split()[0]
                for item in (values["srcset"] or "").split(",")
                if item.strip()
            )
        if tag == "meta" and values.get("property") in {"og:image", "twitter:image"}:
            if values.get("content"):
                self.references.append(values["content"] or "")


def browser_path(relative_path: PurePosixPath) -> str:
    value = "/" + relative_path.as_posix()
    if value.endswith("/index.html"):
        value = value[: -len("index.html")]
    elif value == "/index.html":
        value = "/"
    return value


def resolve_reference(site: Path, source: PurePosixPath, reference: str) -> PurePosixPath | None:
    reference = reference.strip()
    if not reference or reference.startswith(("#", "data:", "mailto:", "tel:", "javascript:")):
        return None

    absolute = urlsplit(urljoin("https://preview.invalid" + browser_path(source), reference))
    if absolute.netloc != "preview.invalid":
        return None

    raw_path = unquote(absolute.path).lstrip("/")
    relative = PurePosixPath(raw_path or "index.html")
    if any(part == ".." for part in relative.parts):
        return None
    if not raw_path:
        return relative

    candidate = site.joinpath(*relative.parts)
    if candidate.is_dir() or absolute.path.endswith("/"):
        relative /= "index.html"
        candidate = site.joinpath(*relative.parts)
    elif not candidate.is_file() and not relative.suffix:
        pretty = relative / "index.html"
        flat = relative.with_suffix(".html")
        if site.joinpath(*pretty.parts).is_file():
            relative = pretty
        elif site.joinpath(*flat.parts).is_file():
            relative = flat

    return relative


def references_from(path: Path) -> list[str]:
    if path.suffix.lower() not in {".html", ".css"}:
        return []
    text = path.read_text(encoding="utf-8", errors="replace")
    references = [match[1] for match in CSS_URL_RE.findall(text)]
    references.extend(CSS_IMPORT_RE.findall(text))
    if path.suffix.lower() == ".html":
        parser = ReferenceParser()
        parser.feed(text)
        references.extend(parser.references)
    return references


def package(site: Path, output_dir: Path, output_zip: Path) -> tuple[int, int]:
    site = site.resolve()
    queue: deque[PurePosixPath] = deque([PurePosixPath("index.html")])
    if (site / "404.html").is_file():
        queue.append(PurePosixPath("404.html"))

    copied: set[PurePosixPath] = set()
    missing: set[tuple[PurePosixPath, str]] = set()

    with tempfile.TemporaryDirectory(prefix="rss2027-preview.") as temp_name:
        payload = Path(temp_name) / "payload"
        payload.mkdir()

        while queue:
            relative = queue.popleft()
            if relative in copied:
                continue
            source_path = site.joinpath(*relative.parts)
            if not source_path.is_file():
                missing.add((relative, "direct entry"))
                continue

            destination = payload.joinpath(*relative.parts)
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source_path, destination)
            copied.add(relative)

            for reference in references_from(source_path):
                resolved = resolve_reference(site, relative, reference)
                if resolved is None:
                    continue
                resolved_path = site.joinpath(*resolved.parts)
                if resolved_path.is_file():
                    queue.append(resolved)
                else:
                    missing.add((relative, reference))

        if missing:
            details = "\n".join(
                f"  {source}: {reference}" for source, reference in sorted(missing)
            )
            raise SystemExit(f"error: broken internal references found:\n{details}")

        replacement = output_dir.with_name(output_dir.name + ".new")
        if replacement.exists():
            shutil.rmtree(replacement)
        shutil.copytree(payload, replacement)
        if output_dir.exists():
            shutil.rmtree(output_dir)
        os.replace(replacement, output_dir)

        temporary_zip = output_zip.with_suffix(output_zip.suffix + ".new")
        temporary_zip.unlink(missing_ok=True)
        with zipfile.ZipFile(temporary_zip, "w", compression=zipfile.ZIP_DEFLATED) as archive:
            for path in sorted(payload.rglob("*")):
                if path.is_file():
                    archive.write(path, path.relative_to(payload))
        os.replace(temporary_zip, output_zip)

    return len(copied), output_zip.stat().st_size


def main() -> None:
    if len(sys.argv) != 4:
        raise SystemExit("usage: pack-preview.py SITE OUTPUT_DIR OUTPUT_ZIP")
    site, output_dir, output_zip = map(Path, sys.argv[1:])
    count, size = package(site, output_dir, output_zip)
    print(f"Wrote {output_dir} ({count} files)")
    print(f"Wrote {output_zip} ({size / 1024 / 1024:.1f}MB)")
    print("Upload either the directory or zip to the root of a static hosting site.")


if __name__ == "__main__":
    main()
