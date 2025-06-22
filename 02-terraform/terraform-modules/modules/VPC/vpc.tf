# vpc 
resource "aws_vpc" "this" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = var.vpc_tags 
}

# public-subnets
resource "aws_subnet" "public" {
  count = length(var.public_cidr_block)
  vpc_id     = aws_vpc.this.id
  cidr_block = var.public_cidr_block[count.index]
  map_public_ip_on_launch = true # assign the ip address those provisioned in the subnet
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "${var.project}-${var.environment}-public-${data.aws_availability_zones.available.names[count.index]}"
  }
}


resource "aws_subnet" "private" {
  count = length(var.private_cidr_block)
  vpc_id     = aws_vpc.this.id
  cidr_block = var.private_cidr_block[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "${var.project}-${var.environment}-private-${data.aws_availability_zones.available.names[count.index]}"
  }
}

resource "aws_subnet" "database" {
  count = length(var.database_cidr_block)
  vpc_id     = aws_vpc.this.id
  cidr_block = var.database_cidr_block[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = {
    Name = "${var.project}-${var.environment}-database-${data.aws_availability_zones.available.names[count.index]}"
  }
}