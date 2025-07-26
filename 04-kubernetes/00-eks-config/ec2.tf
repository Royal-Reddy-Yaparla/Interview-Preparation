resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.custom_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  root_block_device {
    volume_size = 30
  }

  tags = merge( # to merge maps
    var.common_tags,
    {
      Name        = "workstation",
      Environment = "Development"
    }
  )
}

resource "terraform_data" "main" {
  triggers_replace = [aws_instance.my_instance.id]
  provisioner "file" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.my_instance.public_ip
    }
    source      = "workstation-config.sh"
    destination = "/tmp/workstation-config.sh"
  }


  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.my_instance.public_ip
    }

    inline = [
      "chmod +x /tmp/workstation-config.sh",
      "/tmp/workstation-config.sh"
    ]
  }
}


resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "allow ing all inbound rules"
  # vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["::/0"]
  }
}