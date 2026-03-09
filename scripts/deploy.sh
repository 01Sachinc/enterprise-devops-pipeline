#!/bin/bash
# -------------------------------------------------------------------
# Project: Enterprise DevOps Pipeline
# Author: Sachin C S
# -------------------------------------------------------------------

echo "========================================"
echo "[PIPELINE] STAGE: DEPLOYMENT (SIMULATED)"
echo "========================================"

echo "[INFO] Tagging image for AWS ECR: 123456789.dkr.ecr.us-east-1.amazonaws.com/enterprise-dashboard:latest"
sleep 1

echo "[INFO] Pulling Latest Terraform State..."
sleep 1

echo "[INFO] Deploying to Simulated EC2 Node: 10.0.1.55..."
sleep 2

echo "[SUCCESS] Deployment Complete. Application is live."
exit 0
