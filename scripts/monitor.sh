#!/bin/bash
# -------------------------------------------------------------------
# Project: Enterprise DevOps Pipeline
# Author: Sachin C S
# -------------------------------------------------------------------

echo "========================================"
echo "[PIPELINE] STAGE: HEALTH MONITORING"
echo "========================================"

CONTAINER_NAME="enterprise-app"

# Check if container exists and is running
STATUS=$(docker inspect -f '{{.State.Running}}' $CONTAINER_NAME 2>/dev/null)

if [ "$STATUS" == "true" ]; then
    echo "[INFO] Container '$CONTAINER_NAME' is Running."
    echo "[INFO] Extracting Logs (Last 5 lines):"
    docker logs $CONTAINER_NAME --tail 5
    echo "[SUCCESS] Health Check: PASSED"
else
    echo "[CRITICAL] Container '$CONTAINER_NAME' is NOT Running!"
    exit 1
fi
