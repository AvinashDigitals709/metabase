#!/bin/bash
set -eux

echo "[INFO] Stopping Metabase service..."
systemctl stop metabase || true
