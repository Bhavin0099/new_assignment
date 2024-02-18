variable "public_subnet_cidr" {
  default = "10.0.0.0/20"
  type = string
  description = "this is variable for public subnet cidr"
}

variable "public_subnet_tag" {
  default = "elasticsearch_public_subnet"
  type = string
  description = "this is variable for public subnet name "

}

variable "private_subnet_cidr" {
  default = "10.0.32.0/20"
  type = string
  description = "this is variable for private subnet cidr"

}

variable "private_subnet_tag" {
  default = "elasticsearch_private_subnet"
  type = string
  description = "this is variable for private subnet name "
}

variable "vpc_id_from_subnet" {
    type = string
    default = "xyz"
    description = "this is my subnet vpc id"
}



