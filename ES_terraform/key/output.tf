output "private_key_file_output" {
  value = local_file.private_key
  description = "this is the output for my elasticsearch private key"
}

output "public_key_file_output" {
  value = aws_key_pair.public_key.key_name
  description = "this is the output for my elasticsearch public key"
}

