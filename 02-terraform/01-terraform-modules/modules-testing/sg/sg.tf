module "sg" {
  source = "../../modules/sg"
  sg_name = var.sg_name
  sg_description = var.sg_description
  vpc_id = var.vpc_id
  project = var.project
  environment = var.environment
}

