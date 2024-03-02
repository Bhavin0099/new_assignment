resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet_cidr)
  vpc_id     = var.vpc_id_from_subnet
  cidr_block = var.public_subnet_cidr[count.index]

  tags = {
    Name = var.public_subnet_tag
  }
}

resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnet_cidr)
  vpc_id = var.vpc_id_from_subnet
  cidr_block = var.private_subnet_cidr[count.index]

  tags = {
    Name = var.private_subnet_tag
  }
}






