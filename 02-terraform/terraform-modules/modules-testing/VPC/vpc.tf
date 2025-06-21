module "vpc" {
  source = "../../modules/VPC"
  project = var.project
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
}