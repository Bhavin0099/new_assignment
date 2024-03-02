variable "root_region" {
  default = "ap-south-1"
  type = string
  description = "region for vpc"
}

################ for VPC #################

variable "root_vpc_tag" {
  default = "Elasticsearch_vpc"
  type = string
  description = "this is tag for vpc from var,tf file"
}

variable "root_vpc" {
  type = string
  default = "10.0.0.0/16"
  description = "this is vpc cidr form root var.tf file"
}

############### for_vpc_peering  ################

variable "root_vpc_id_jenkins_cidr" {
  type = string
}

variable "root_vpc_id_jenkins" {
  type = string
  default = "vpc-0e3056d8fcb0dc815"
  description = "this is root_vpc_id_jenkins"
}

variable "root_peer_owner_id" {
  type = number
  default = 362382172439
  description = "this is root_peer_owner_id"
}

################ for public/private subnet #################

variable "root_public_subnet_count_number" {
  type = number
  default = 1
  description = "here, you can define how much public subnet you want."
}

variable "root_public_subnet_cidr" {
 type = list(string)
 default = ["10.0.64.0/18"]
 description = "this is public cidr"
}

variable "root_public_subnet_tag" {
  type = string
  default = "elasticsearch_public_subnet"
  description = "This variable block is for public subnet name/tag"
}

variable "root_private_subnet_count_number" {
  type = number
  default = 1
  description = "here, you can define how much private subnet you want."
}

variable "root_private_subnet_cidr" {
 type = list(string)
 default = ["10.0.16.0/18"]
 description = "this is private cidr"
}

variable "root_private_subnet_tag" {
  type = string
  default = "elasticsearch_private_subnet"
  description = "This variable block is for private subnet name/tag"
}

################ for Internat gateway #################

variable "root_internet_gateway_tag" {
  type = string
  default = "Elasticsearch_IGW"
  description = "This variable block is for Internate gateway name/tag"
}

################ for NAT gateway #################

variable "root_NAT_gateway_tag" {
  type = string
  default = "Elasticsearch_NAT"
  description = "This variable block is for NAT-gateway name/tag"
}

################ for public/private RT #################

variable "root_public_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "This varible block is for public route cidr"
}

variable "root_public_route_tag" {
  type = string
  default = "Elasticsearch_pub_RT"
  description = "This varible block is for public route tag/name"
}

variable "root_private_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "This varible block is for private route cidr"
}

variable "root_private_route_tag" {
  type = string
  default = "Elasticsearch_private_RT"
  description = "This varible block is for private route tag/name"
}

#################### for security group ###########

variable "root_SG_name" {
  type = string
  default = "Elasticsearch_SG"
  description = "This varible block is for SG name"
}

variable "root_SG_description" {
  type = string
  default = "I am providing SSH, http, https, elasticsearch, kibana ports"
  description = "This varible block is for SG description"
}

variable "root_SG_tag" {
  type = string
  default = "Elasticsearch_SG"
  description = "This varible block is for SG tag"
}

#################### for key pair ###########


variable "root_public_key" {
  type = string
  default = "Elasticsearch_public_key"
  description = "This variable block is for public key"
}
variable "root_private_key" {
  type = string
  default = "Elasticsearch_private_key"
  description = "This variable block is for private key"
}

#################### for private instances ###########

variable "root_private_instance_count_number" {
  type = number
  default = 1
  description = "here, you can define how much private instance you want."
}

variable "root_instance_ami" {
  type = string
  default = "ami-03f4878755434977f"
  description = "This varible block is for instance ami"
}

variable "root_private_instance_type" {
  type = string
  default = "t2.medium"
  description = "This varible block is for private instance type "
}

variable "root_private_instance_name" {
  type = string
  default = "Elasticsearch_private_slave"
  description = "This varible block is for private instance tag/name "
}



variable "root_private_instance_volume_size" {
  type = number
  default = "8"
  description = "This varible block is for  private instance volume size"
}

variable "root_private_instance_volume_type" {
  type = string
  default = "gp3"
  description = "This varible block is for  private instance volume type"
}


#################### for public instances ###########

variable "root_public_instance_count_number" {
  type = number
  default = 1
  description = "here, you can define how much public instance you want."
}

variable "root_public_instance_type" {
  type = string
  default = "t2.micro"
  description = "This varible block is for public instance type "
}

variable "root_public_instance_name" {
  type = string
  default = "Elasticsearch_public_slave"
  description = "This varible block is for public instance tag/name "
}


variable "root_public_instance_volume_size" {
  type = number
  default = "8"
  description = "This varible block is for public instance volume size"
}

variable "root_public_instance_volume_type" {
  type = string
  default = "gp3"
  description = "This varible block is for public instance volume type"
}

