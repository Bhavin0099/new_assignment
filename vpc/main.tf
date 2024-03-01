resource "aws_vpc" "elasticsearch_vpc" {
  cidr_block = var.my_vpc

  tags = {
    Name = var.vpc_tag
  }
}