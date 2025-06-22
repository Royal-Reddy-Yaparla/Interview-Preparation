locals {
  ec2_tags = merge( # to merge maps
    var.common_tags,
    {
      Name = "${var.component}-${var.environment}"
    },
    var.ec2_tags
  )
}