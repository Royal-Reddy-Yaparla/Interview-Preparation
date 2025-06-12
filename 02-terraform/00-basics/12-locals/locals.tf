locals {
  instance_final_name = "${var.instance_name}-${var.environment}-${var.region}"
  ec2_tags = merge(
    var.common_tags,
    {
        Name = "catalogue"
        Environment = "Development"
    }
  )
}

output "final_name" {
  value = local.instance_final_name
}

output "final_ec2_tags" {
  value = local.ec2_tags
}