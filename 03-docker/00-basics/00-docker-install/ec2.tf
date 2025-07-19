resource "aws_instance" "my_instance" {
  ami                    = data.aws_ami.custom_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = merge( # to merge maps
    var.common_tags,
    {
      Name        = "docker",
      Environment = "Development"
    }
  )
}

resource "terraform_data" "main" {
  triggers_replace = [aws_instance.my_instance.id]

    provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.my_instance.public_ip
    }

    inline = [
      "sudo dnf -y install dnf-plugins-core",
      "sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo",
      "sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin",
      "sudo systemctl start docker",
      "sudo systemctl enable docker",
      "sudo usermod -aG docker ec2-user"
    ]
  }
}

# resource "aws_ec2_instance_state" "main" {
#   instance_id = aws_instance.my_instance.id
#   depends_on  = [terraform_data.main]
#   state       = "running" #stopped/running
# }


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