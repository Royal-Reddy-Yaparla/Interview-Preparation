module "ec2" {
  source             = "../../modules/ec2"
  ami_id             = data.aws_ami.custom_ami.id
  instance_type      = var.instance_type
  security_group_ids = var.security_group_ids
  subnet_id          = var.subnet_id
  tags               = local.ec2_tags
}