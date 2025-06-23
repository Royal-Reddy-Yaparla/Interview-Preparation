module "vpc" {
  source              = "../../modules/VPC"
  environment         = var.environment
  project             = var.project
  vpc_cidr_block      = var.cidr_block
  private_cidr_block  = var.public_cidr_block
  public_cidr_block   = var.private_cidr_block
  database_cidr_block = var.database_cidr_block
  is_peering_required = var.is_peering_required
}

