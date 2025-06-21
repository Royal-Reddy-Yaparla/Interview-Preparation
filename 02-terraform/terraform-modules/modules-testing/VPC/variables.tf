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