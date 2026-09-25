#!/usr/bin/env bash
# Build an upload-ready preview directory and zip from the generated site.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SITE="${ROOT}/_site"
OUT_DIR="${ROOT}/rss2027-preview"
OUT_ZIP="${ROOT}/rss2027-preview.zip"

if [[ ! -f "${SITE}/index.html" ]]; then
  echo "error: ${SITE}/index.html is missing. Build the site first." >&2
  exit 1
fi

python3 "${ROOT}/scripts/pack-preview.py" "${SITE}" "${OUT_DIR}" "${OUT_ZIP}"
