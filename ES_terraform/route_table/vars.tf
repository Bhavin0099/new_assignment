############## public route #################

variable "public_route_tag" {
  type = string
  default = "Elasticsearch_pub_RT"
  description = "this block is for public route tag"
}


variable "vpc_id_from_RT" {
  type = string
  default = "xyz"
  description = "this block is for route vpc " 
}

variable "public_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "this block is for public route cidr "
}

variable "public_route_IGW" {
  type = string
  description = "this block is for public route IGW "
}

variable "route_public_subnet" {
  type = string
  default = "zyx"
  description = "this block is for route public_subnet " 
}

############## private route #################

variable "private_route_cidr_block" {
  type = string
  default = "0.0.0.0/0"
  description = "this block is for private route cidr "
}

variable "private_route_tag" {
  type = string
  default = "Elasticsearch_private_RT"
  description = "this block is for private route tag"
}

variable "private_route_NAT_gateway" {
  type = string
  description = "this block is for private route NAT gateway "
}

variable "route_private_subnet" {
  type = string
  default = "zyx"
  description = "this block is for route private subnet " 
}
