variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
  type = map 
  default = {}
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "public_cidr_block" {
  type = list
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_cidr_block" {
  type = list
  default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "database_cidr_block" {
  type = list
  default = ["10.0.21.0/24","10.0.22.0/24"]
}
