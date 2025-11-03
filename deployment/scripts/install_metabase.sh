#!/bin/bash
set -eux

echo "[INFO] Installing Metabase JAR..."
cp /opt/metabase/metabase.jar /opt/metabase/metabase-$(date +%Y%m%d%H%M%S).jar || true
chown metabase:metabase /opt/metabase/metabase.jar
chmod 755 /opt/metabase/metabase.jar
