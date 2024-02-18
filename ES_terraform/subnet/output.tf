output "public_subnet_output" {
    
    value = aws_subnet.public_subnet.id
    description = "this is the output for public subnet"
}

output "private_subnet_output" {
    value = aws_subnet.private_subnet.id
    description = "this is the output for private subnet"
}