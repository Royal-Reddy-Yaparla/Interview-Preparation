variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_name" {
  type    = list(string)
  default = ["database", "web", "backend"]
}

variable "instance_info" {
  type    = map 
  default = {
    database = "t2.medium",
    frontent = "t2.micro"
    backend = "t2.small"
  }

}

variable "instance_type" {
  type = string
  # default = "t2.micro" # commenting for checking
}

variable "sg_name" {
  type    = string
  default = "allow_all"
}

variable "sg_description" {
  type    = string
  default = "allow ing all inbound and outbound rules"
}

# ingress
variable "ingress_from_port" {
  type    = number
  default = 0
}

variable "ingress_to_port" {
  type    = number
  default = 0
}

variable "ingress_protocol" {
  type    = string
  default = "-1"
}

variable "ingress_cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

# egress
variable "egress_from_port" {
  type    = number
  default = 0
}

variable "egress_to_port" {
  type    = number
  default = 0
}

variable "egress_protocol" {
  type    = string
  default = "-1"
}

variable "egress_cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}