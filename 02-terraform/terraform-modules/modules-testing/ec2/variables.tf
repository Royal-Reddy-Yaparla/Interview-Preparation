variable "instance_type" {
  default = "t2.micro" # for validation test try t2.large
}

variable "security_group_ids" {
  default = ["sg-04fab5b717cb60f70"]
}

variable "subnet_id" {
  default = "subnet-06b38097daef76f2c"
}

variable "common_tags" {
  default = {
    project   = "ecom"
    terraform = true
  }
}

variable "component" {
  default = "user"
}

variable "environment" {
  default = "dev"
}

variable "ec2_tags" {
  default = {
    region  = "us-east-1"
    created = "devops"
  }
}