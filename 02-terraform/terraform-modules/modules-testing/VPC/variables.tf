variable "cidr_block" {
  default = "10.0.0.0/16"
}


variable "project" {
  default = "ecom"
}

variable "environment" {
  default = "dev"
}

variable "vpc_tags" {
  default = {
    region  = "us-east-1"
    created = "devops"
  }
}

variable "public_cidr_block" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_cidr_block" {
  type    = list(any)
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_cidr_block" {
  type    = list(any)
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}