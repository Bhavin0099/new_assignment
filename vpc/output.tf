output "vpc_output" {
   value = aws_vpc.elasticsearch_vpc.id
   description = "this is output for VPC"
}