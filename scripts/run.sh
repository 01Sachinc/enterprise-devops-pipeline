#!/bin/bash
# -------------------------------------------------------------------
# Project: Enterprise DevOps Pipeline
# Author: Sachin C S
# -------------------------------------------------------------------

echo "========================================"
echo "[PIPELINE] STAGE: RUN (LOCAL)"
echo "========================================"

# Navigate to docker folder
cd "$(dirname "$0")/../docker"

echo "[INFO] Starting Multi-Container Stack..."
docker-compose up -d

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Dashboard is live at http://localhost"
else
    echo "[ERROR] Execution failed."
    exit 1
fi
