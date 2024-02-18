variable "my_vpc" {
  default = "10.0.0.0/16"
  type = string
  description = "this is variable of vpc"
}

variable "vpc_tag" {
  default = "vpc_vars_name"
  type = string
  description = "this is variable of vpc tag"
}