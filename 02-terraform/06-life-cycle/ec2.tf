resource "aws_instance" "my_instance" {
  count                  = length(var.instances) # length function
  ami                    = data.aws_ami.custom_ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  root_block_device {
    volume_size = 30
  }


  tags = merge( # to merge maps
    var.common_tags,
    {
      Name        = "${var.instances[count.index]}",
      Environment = "Development"
    }
  )
}

resource "aws_security_group" "allow_all" {
  name        = var.sg_name
  description = var.sg_description
  # vpc_id      = aws_vpc.main.id

  /* 

  while updating resource if it immutable infra-resource , terraform will destroy the resource and 
  recreate new one but , it is dependency , resource won't be deleted, update won't be implemented,
  for updating resource if it immutable infra-resource, terraform life-cycle comes into picture.

  Lifecycle arguments help control the flow of Terraform operations 
  by creating custom rules for resource creation and destruction.

  lifecycle {
   prevent_destroy = true
   create_before_destroy = true
  }


  */
  lifecycle {
    create_before_destroy = true
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
    protocol    = var.egress_from_port
    cidr_blocks = var.egress_cidr_blocks
    # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}