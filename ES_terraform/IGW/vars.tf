variable "internet_gateway_tag" {
  type = string
  default = "Elasticsearch_IGW"
  description = "this block for internet-gateway tag"
}

variable "vpc_id_from_IGW" {
    type = string
    default = ""
    description = "this is my subnet vpc id for IGW"
}