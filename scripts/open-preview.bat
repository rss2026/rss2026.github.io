@echo off
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
  echo Python 3 is required. Install it from https://www.python.org/downloads/ and try again.
  pause
  exit /b 1
)

set PORT=4000
start "" "http://127.0.0.1:%PORT%/"
echo Serving RSS 2027 preview at http://127.0.0.1:%PORT%/
echo Leave this window open. Close it or press Ctrl+C to stop.
python -m http.server %PORT%
