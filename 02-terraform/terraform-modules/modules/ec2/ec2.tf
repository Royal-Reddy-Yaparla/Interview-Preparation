resource "aws_instance" "main" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  subnet_id = var.subnet_id
  tags = merge( # to merge maps
    var.common_tags,
    {
      Name = "${var.component}-${var.environment}"
    },
    var.ec2_tags
  )
}