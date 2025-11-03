#!/bin/bash
set -eux

echo "[INFO] Performing Metabase health check..."
sleep 10

STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000 || true)
if [ "$STATUS" -eq 200 ]; then
  echo "[SUCCESS] Metabase is healthy!"
  exit 0
else
  echo "[ERROR] Metabase failed health check (HTTP $STATUS)"
  exit 1
fi
