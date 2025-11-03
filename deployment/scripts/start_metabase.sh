#!/bin/bash
set -eux

echo "[INFO] Starting Metabase service..."
systemctl daemon-reload
systemctl start metabase
systemctl enable metabase
