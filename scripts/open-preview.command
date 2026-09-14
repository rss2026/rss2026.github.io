#!/bin/bash
# Double-click to preview the unzipped RSS 2027 site (macOS).
set -euo pipefail
cd "$(dirname "$0")"

if ! command -v python3 >/dev/null 2>&1; then
  echo "Python 3 is required. Install it from https://www.python.org/downloads/ and try again."
  read -r -p "Press Enter to close."
  exit 1
fi

PORT=4000
while lsof -nP -iTCP:"${PORT}" -sTCP:LISTEN >/dev/null 2>&1; do
  PORT=$((PORT + 1))
  if [[ "${PORT}" -gt 4010 ]]; then
    echo "Could not find a free port in 4000-4010."
    read -r -p "Press Enter to close."
    exit 1
  fi
done

URL="http://127.0.0.1:${PORT}/"
echo "Serving RSS preview at ${URL}"
echo "Leave this window open. Press Ctrl+C to stop."
(sleep 0.4 && open "${URL}") &
python3 -m http.server "${PORT}"
