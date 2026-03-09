variable "environment" {
  description = "Target environment for deployment"
  default     = "production"
}

variable "region" {
  description = "Simulation region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Simulated compute power"
  default     = "t3.medium"
}
