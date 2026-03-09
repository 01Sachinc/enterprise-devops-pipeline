# -------------------------------------------------------------------
# Project: Enterprise DevOps Pipeline
# Component: Infrastructure as Code Simulation
# Author: Sachin C S
# -------------------------------------------------------------------

# Simulated VPC
resource "null_resource" "vpc" {
  provisioner "local-exec" {
    command = "echo [Terraform] Creating VPC: vpc-enterprise-01 (10.0.0.0/16)..."
  }
}

# Simulated Subnet
resource "null_resource" "subnet" {
  depends_on = [null_resource.vpc]
  provisioner "local-exec" {
    command = "echo [Terraform] Creating Subnet: subnet-public-01 (10.0.1.0/24)..."
  }
}

# Simulated EC2 Instance
resource "null_resource" "ec2_instance" {
  depends_on = [null_resource.subnet]
  provisioner "local-exec" {
    command = "echo [Terraform] Provisioning EC2 Instance: enterprise-server-01..."
  }
}

# Simulated S3 Bucket for Logs
resource "null_resource" "s3_logs" {
  provisioner "local-exec" {
    command = "echo [Terraform] Creating S3 Bucket: enterprise-logs-storage..."
  }
}
