resource "aws_instance" "my_instance" {
  count                  = length(var.instances) # length function
  ami                    = data.aws_ami.custom_ami.id
  instance_type          = local.instance_type[terraform.workspace]
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = merge( # to merge maps
    var.common_tags,
    {
      Name        = "${var.instances[count.index]}-${var.region}-${terraform.workspace}",
      Environment = "${terraform.workspace}"
    }
  )
}

resource "aws_security_group" "allow_all" {
  name        = "${var.sg_name}-${terraform.workspace}"
  description = var.sg_description
  # vpc_id      = aws_vpc.main.id

  tags = {
    Name = "${var.sg_name}-${terraform.workspace}"
  }

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = var.ingress_protocol
      cidr_blocks = var.ingress_cidr_blocks
    }

    # ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = var.egress_from_port
    to_port     = var.ingress_to_port
    protocol    = var.egress_protocol
    cidr_blocks = var.egress_cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }
}