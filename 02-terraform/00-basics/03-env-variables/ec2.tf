resource "aws_instance" "my_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description
  # vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.ingress_protocol
    cidr_blocks      = var.ingress_cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = var.egress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.egress_from_port
    cidr_blocks      = var.egress_cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }
}