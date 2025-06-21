variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "common_tags" {
  type = map 
  default = {
    Terraform = true
  }
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_tags" {
  type = map 
  default = {}
}