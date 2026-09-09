#!/usr/bin/env bash
# Pack a slim 2027 preview of _site for sharing (no year archives or office leftovers).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SITE="${ROOT}/_site"
STAMP="$(date +%Y%m%d)"
OUT="${1:-${ROOT}/rss2027-preview-${STAMP}.zip}"

if [[ ! -f "${SITE}/index.html" ]]; then
  echo "error: ${SITE}/index.html is missing. Build the site first (jekyll serve or jekyll build)." >&2
  exit 1
fi

STAGE="$(mktemp -d "${TMPDIR:-/tmp}/rss2027-preview.XXXXXX")"
cleanup() { rm -rf "${STAGE}"; }
trap cleanup EXIT

DEST="${STAGE}/rss2027-preview"
mkdir -p "${DEST}/information" "${DEST}/images" "${DEST}/docs"

cp "${SITE}/index.html" "${DEST}/"
[[ -f "${SITE}/404.html" ]] && cp "${SITE}/404.html" "${DEST}/"

if [[ -d "${SITE}/information/cfp" ]]; then
  cp -R "${SITE}/information/cfp" "${DEST}/information/"
else
  echo "error: ${SITE}/information/cfp is missing." >&2
  exit 1
fi

if [[ -d "${SITE}/public" ]]; then
  cp -R "${SITE}/public" "${DEST}/"
fi

# Banner / favicon assets used by the live 2027 pages.
for img in RSS2026-logo.png RSS2026-logo.jpg rss2027-banner-preview.png; do
  [[ -f "${SITE}/images/${img}" ]] && cp "${SITE}/images/${img}" "${DEST}/images/"
done

for doc in paper-template-latex.tar.gz paper-template-word.zip; do
  [[ -f "${SITE}/docs/${doc}" ]] && cp "${SITE}/docs/${doc}" "${DEST}/docs/"
done

# Drop empty dirs so the zip stays tidy.
find "${DEST}" -type d -empty -delete

cp "${ROOT}/scripts/open-preview.command" "${DEST}/Open Preview.command"
cp "${ROOT}/scripts/open-preview.bat" "${DEST}/Open Preview.bat"
chmod +x "${DEST}/Open Preview.command"

rm -f "${OUT}"
# Zip from the staging parent so the archive has a single top-level folder.
(cd "${STAGE}" && zip -qry "${OUT}" rss2027-preview)

BYTES="$(wc -c < "${OUT}" | tr -d ' ')"
echo "Wrote ${OUT} ($(awk "BEGIN { printf \"%.1fMB\", ${BYTES}/1024/1024 }"))"
echo "Unzip, then double-click Open Preview.command (Mac) or Open Preview.bat (Windows)."
