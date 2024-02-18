resource "aws_internet_gateway" "IGW" {
  vpc_id = var.vpc_id_from_IGW

  tags = {
    Name = var.internet_gateway_tag
  }
}