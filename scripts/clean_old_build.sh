#!/bin/bash
set -eux

echo "[INFO] Cleaning old Metabase JAR files..."
if [ -f /opt/metabase/metabase.jar ]; then
  echo "[INFO] Removing existing metabase.jar..."
  rm -f /opt/metabase/metabase.jar
fi

echo "[INFO] Clean-up complete."
