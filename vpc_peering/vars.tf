variable "peer_owner_id" {
    type = string
}

variable "peer_vpc_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "route_table_ids" {
  type = list(string)
}
