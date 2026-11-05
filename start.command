#!/bin/bash
# Opens the UN 2050 site with a tiny local server (needed so the browser can load the 3D people).
cd "$(dirname "$0")"
PORT=8765
pkill -f "http.server $PORT" 2>/dev/null
python3 -m http.server $PORT --bind 127.0.0.1 >/dev/null 2>&1 &
sleep 1
open "http://127.0.0.1:$PORT/index.html?fresh=$(date +%s)"
echo "Running at http://127.0.0.1:$PORT  (close this window or press Ctrl+C to stop)"
wait
