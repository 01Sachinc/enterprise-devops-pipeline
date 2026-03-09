#!/bin/bash
# -------------------------------------------------------------------
# Project: Enterprise DevOps Pipeline
# Author: Sachin C S
# -------------------------------------------------------------------

IMAGE_NAME="enterprise-dashboard"
TAG="latest"

echo "========================================"
echo "[PIPELINE] STAGE: DOCKER BUILD"
echo "========================================"

# Navigate to root
cd "$(dirname "$0")/.."

echo "[INFO] Building Image: $IMAGE_NAME:$TAG..."
docker build -t "$IMAGE_NAME:$TAG" -f docker/Dockerfile .

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Image built successfully."
else
    echo "[ERROR] Build failed."
    exit 1
fi
