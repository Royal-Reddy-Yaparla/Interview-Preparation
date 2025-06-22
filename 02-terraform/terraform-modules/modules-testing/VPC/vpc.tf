module "vpc" {
  source = "../../modules/VPC"
  vpc_tags = local.vpc_tags
  environment = var.environment
  project = var.project
}

