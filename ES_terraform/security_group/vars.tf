variable "SG_name" {
  type = string
  default = "Elasticsearch_SG"
  description = "This block is for security group name"
}

variable "SG_description" {
  type = string
  default = "I am providing SSH, http, https, elasticsearch, kibana ports"
  description = "This block is for security group description"
}

variable "vpc_id_from_SG" {
    type = string
    default = "xyz"
    description = "this is my Security group's vpc id"
}

variable "SG_tag" {
  type = string
  default = "Elasticsearch_SG"
  description = "This block is for security group tag"
}
