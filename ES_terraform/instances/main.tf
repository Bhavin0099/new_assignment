
######################### private_instance #####################################

resource "aws_instance" "Elasticsearch_private_instance" {
  ami = var.instance_ami
  instance_type = var.private_instance_type
  subnet_id = var.instance_private_subnet
  associate_public_ip_address = false   
  key_name = var.key_pair_from_instance
  security_groups = [ var.SG_from_instances ]


  tags = {
    Name = var.private_instance_name
  }

  root_block_device {
    volume_size = var.private_instance_volume_size
    volume_type = var.private_instance_volume_type
  }
}


######################### public_instance #####################################

resource "aws_instance" "Elasticsearch_public_instance" {
  ami = var.instance_ami
  instance_type = var.public_instance_type
  subnet_id = var.instance_public_subnet
  associate_public_ip_address = true
  key_name = var.key_pair_from_instance
  security_groups = [ var.SG_from_instances ]
  

  tags = {
    Name = var.public_instance_name
  }

  root_block_device {
    volume_size = var.public_instance_volume_size
    volume_type = var.public_instance_volume_type
  }
}
