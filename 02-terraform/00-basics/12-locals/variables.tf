variable "instance_name" {
  type    = string
  default = "catalogue"
}

variable "environment" {
  type    = string
  default = "development"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "common_tags" {
  default = {
    Project   = "roboshop"
    Terraform = true
  }
}

# lets try variable inside variable

# variable "final_name" {
#   default = "${var.instance_name}-${var.environment}-${var.region}"
# }

# output "final_name" {
#   value = var.final_name
# }

# will get error 

# │ Error: Variables not allowed
# │
# │   on variables.tf line 19, in variable "final_name":
# │   19:   default = "${var.instance_name}-${var.environment}-${var.region}"
# │
# │ Variables may not be used here.
