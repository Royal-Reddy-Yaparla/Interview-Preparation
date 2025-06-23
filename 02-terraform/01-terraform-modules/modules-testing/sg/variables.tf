variable "sg_name" {
  default = "frontend"
}

variable "sg_description" {
  default = "allowing SSH,HTTP,HTTPS"
}

variable "project" {
  default = "ecom"
}

variable "environment" {
  default = "dev"
}

variable "vpc_id" {
  default = "vpc-03f342ee5becaa338"
}

variable "sg_tags" {
  type = map 
  default = {}
}
