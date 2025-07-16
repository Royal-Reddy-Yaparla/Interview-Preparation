resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.custom_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  # provisioner "remote-exec" {
  #   connection {
  #     type     = "ssh"
  #     user     = "ec2-user"
  #     password = "DevOps321"
  #     host     = self.public_ip
  #   }

  #   inline = [
  #     "sudo dnf -y install dnf-plugins-core",
  #     "sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo",
  #     "sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin",
  #     "sudo usermod -aG docker ec2-user",
  #   ]
  # }

  tags = merge( # to merge maps
    var.common_tags,
    {
      Name        = "docker",
      Environment = "Development"
    }
  )
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description
  # vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["ingress_protocol"]
      cidr_blocks = var.ingress_cidr_blocks
    }
    # ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = var.egress_from_port
    to_port     = var.egress_to_port
    protocol    = var.egress_from_port
    cidr_blocks = var.egress_cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }
}