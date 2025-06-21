# vpc 
resource "aws_vpc" "this" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true

  tags = merge( # to merge maps
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}"
    },
    var.vpc_tags
  )
}