variable "ami_id" {
  type    = string
  default = ""
}

variable "instance_type" { #tfvars
  type    = string
  default = "t2.micro"
}

variable "environment" { # tfvar
  type    = string
  default = "dev"
}
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instances" {
  type    = list(string)
  default = ["frontend", "backend", "database"]
}


variable "common_tags" {
  default = {
    Project   = "roboshop"
    Terraform = true
  }
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



variable "ingress_ports" {
  default = [
    {
      from_port = 22 # SSH
      to_port   = 22
    },
    {
      from_port = 80 # HTTP
      to_port   = 80
    },
    {
      from_port = 443 # HTTPS 
      to_port   = 443
    },
  ]
}

variable "ingress_protocol" {
  type    = string
  default = "tcp"
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