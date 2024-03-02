

output "public_route_output" {
value = aws_route_table.public_route_table.id
}



output "private_route_output" {
value = aws_route_table.private_route_table.id
}
