
variable "SG_from_instances" {
  type = string
  default = ""
  description = "This block is for SG id"
}

######################### instance_ami #####################################

variable "instance_ami" {
  type = string
  default = "ami-03f4878755434977f"
  description = "This ami is ubuntu in mumbai region"
}



######################### private_instance #####################################

variable "private_instance_type" {
  type = string
  default = "t2.medium"
  description = "This is private instance type"
}

variable "private_instance_name" {
  type = string
  default = "Elasticsearch_private_slave"
  description = "This name block is for private instance"
}



variable "instance_private_subnet" {
  type = string
  default = ""
  description = "This block is for private subnet id"
}

variable "private_instance_volume_size" {
  type = number
  default = "8"
  description = "This block is for private instance size"
}

variable "private_instance_volume_type" {
  type = string
  default = "gp3"
  description = "This block is for private instance volume type"
}

######################### public_instance #####################################

variable "public_instance_type" {
  type = string
  default = "t2.micro"
  description = "This is public instance type"
}

variable "public_instance_name" {
  type = string
  default = "Elasticsearch_public_slave"
  description = "This name block is for public instance"
}


variable "instance_public_subnet" {
  type = string
  default = ""
  description = "This block is for public subnet id"
}

variable "public_instance_volume_size" {
  type = number
  default = "8"
  description = "This block is for public instance size"
}

variable "public_instance_volume_type" {
  type = string
  default = "gp3"
  description = "This block is for public instance volume type"
}




variable "key_pair_from_instance" {
  type = string
  description = "This block is for key pair"
  default = ""
}