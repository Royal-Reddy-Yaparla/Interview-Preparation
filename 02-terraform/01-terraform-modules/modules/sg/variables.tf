variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "sg_tags" {
  type    = map(any)
  default = {}
}

variable "ingress_ports" {
  type = list(object({
    from_port = number
    to_port = number
    ingress_protocol = string
    ingress_cidr_blocks = list(string)
  }))
}

# variable "ingress_protocol" {
#   type    = string
#   default = "-1" # values would be : [ "tcp","udp", all = "-1" ]
# }

# variable "ingress_cidr_blocks" {
#   type    = list(string)
#   default = ["0.0.0.0/0"]
# }

# egress
variable "egress_ports" {
  type = list(object({
    from_port = number
    to_port = number
    egress_protocol = string
    egress_cidr_blocks = list(string)
  }))
}


# variable "egress_from_port" {
#   type    = number
#   default = 0
# }

# variable "egress_to_port" {
#   type    = number
#   default = 0
# }

# variable "egress_protocol" {
#   type    = string
#   default = "-1"
# }

# variable "egress_cidr_blocks" {
#   type    = list(string)
#   default = ["0.0.0.0/0"]
# }
