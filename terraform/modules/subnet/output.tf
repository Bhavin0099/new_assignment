output "public_subnet_output" {
    value = aws_subnet.public_subnet[0].id
    description = "this is the output for public subnet"
}

output "private_subnet_output" {
    value = aws_subnet.private_subnet[0].id
    description = "this is the output for private subnet"
}