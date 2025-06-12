variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "development"
}

variable "ec2_name" {
  type    = string
  default = "web"
}

# variable "ec2_tags" {
#   type = map(string)
#   default = {
#     "Name" = "sample",
#     "Terraform" = true 
#   }
# }

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
  default = "-1" # values would be : [ "tcp","udp", all = "-1" ]
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