
resource "aws_eip" "eip_NAT" {
  domain = var.elastic_ip
}

resource "aws_nat_gateway" "NAT_gateway_block" {
  
  allocation_id = aws_eip.eip_NAT.id
  subnet_id     = var.public_subnet_id_at_NAT_gateway

  tags = {
    Name = var.NAT_gateway_tag
  }
}










