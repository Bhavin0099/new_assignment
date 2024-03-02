output "NAT_gateway_output" {
  value = aws_nat_gateway.NAT_gateway_block.id
  description = "this is the output for my NAT gateway."
}