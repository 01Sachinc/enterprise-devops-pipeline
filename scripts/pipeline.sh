#!/bin/bash
# -------------------------------------------------------------------
# Project: Enterprise DevOps Pipeline
# Author: Sachin C S
# Component: Pipeline Orchestrator
# -------------------------------------------------------------------

echo "========================================"
echo "ENTERPRISE DEVOPS PIPELINE: STARTING"
echo "========================================"
echo "Date: $(date)"

# 1. INFRASTRUCTURE (TERRAFORM)
echo "[INFO] Initializing Infrastructure Provisioning..."
# In a real scenario: terraform init && terraform apply -auto-approve
echo "[SUCCESS] Infrastructure Provisioned Successfully."

# 2. BUILD
bash scripts/build.sh
if [ $? -ne 0 ]; then exit 1; fi

# 3. RUN / TEST
bash scripts/run.sh
if [ $? -ne 0 ]; then exit 1; fi

# 4. MONITOR
bash scripts/monitor.sh
if [ $? -ne 0 ]; then exit 1; fi

# 5. DEPLOY
bash scripts/deploy.sh
if [ $? -ne 0 ]; then exit 1; fi

echo "========================================"
echo "PIPELINE COMPLETED SUCCESSFULLY"
echo "========================================"
exit 0
