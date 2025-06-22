locals {
  common_tags = {
    Project     = var.project
    Environment = var.environment
    Terraform   = true
  }

  azs = data.aws_availability_zones.available.names
}