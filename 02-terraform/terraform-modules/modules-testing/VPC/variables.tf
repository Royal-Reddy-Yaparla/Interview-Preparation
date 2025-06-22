variable "cidr_block" {
  default = "10.0.0.0/16"
}



variable "common_tags" {
  default = {
    project = "ecom"
    terraform = true
  }
}

variable "project" {
  default = "ecom"
}

variable "environment" {
    default = "dev"
}

variable "vpc_tags" {
  default = {
    region = "us-east-1"
    created = "devops"
  }
}