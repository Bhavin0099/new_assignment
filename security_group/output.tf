output "security_group_output" {
  value = aws_security_group.ES_security_group.id
  description = "this is the output for security group"
}