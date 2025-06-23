variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
  type    = map(any)
  default = {}
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
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


variable "public_subnet_tags" {
  type    = map(any)
  default = {}
}

variable "private_subnet_tags" {
  type    = map(any)
  default = {}
}

variable "database_subnet_tags" {
  type    = map(any)
  default = {}
}

variable "igt_tags" {
  type    = map(any)
  default = {}
}

variable "elastic_ip_tags" {
  type    = map(any)
  default = {}
}



variable "nat_gateway_tags" {
  type    = map(any)
  default = {}
}


variable "public_rt_tags" {
  type    = map(any)
  default = {}
}

variable "private_rt_tags" {
  type    = map(any)
  default = {}
}

variable "database_rt_tags" {
  type    = map(any)
  default = {}
}

variable "peering_tags" {
  type = map
  default = {}
}


variable "is_peering_required" {
  type    = bool
  default = false
}