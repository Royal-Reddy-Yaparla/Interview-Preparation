locals {
  vpc_tags = merge( # to merge maps
    var.common_tags,
    {
      Name = "${var.project}-${var.environment}"
    },
    var.vpc_tags
  )
}