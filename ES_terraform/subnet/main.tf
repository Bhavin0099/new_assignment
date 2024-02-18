resource "aws_subnet" "public_subnet" {
  vpc_id     = var.vpc_id_from_subnet
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = var.public_subnet_tag
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id = var.vpc_id_from_subnet
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = var.private_subnet_tag
  }
}

