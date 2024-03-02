
# RSA key of size 4096 bits
resource "tls_private_key" "key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "public_key" {
  key_name   = var.public_key_pair
  public_key = tls_private_key.key.public_key_openssh
  provisioner "local-exec" {
    command = "echo ${tls_private_key.key.private_key_pem} > ./${public_key_pair}.pem"
  }
}

resource "local_file" "private_key" {
  content = tls_private_key.key.private_key_pem
  filename = var.private_key_pair
  provisioner "local-exec" {
    command = "echo ${tls_private_key.key.private_key_pem} > ./${private_key_pair}.pem"
  }
}


#resource "aws_key_pair" "public_key_pair" {
#  key_name   = var.public_key_pair
#  public_key = tls_private_key.private_key.public_key_openssh
#} 
#
#
#resource "tls_private_key" "private_key" {
#  algorithm = "RSA"
#  rsa_bits  = 4096
#}
#
#resource "local_file" "private_key_file" {
#  content  = tls_private_key.private_key.private_key_pem
#  filename = var.private_key_name
#}
