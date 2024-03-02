resource "aws_vpc_peering_connection" "vpc_peering_jenkins" {
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = var.peer_vpc_id_created
  vpc_id        = var.vpc_id_jenkins
  auto_accept   = true
}

data "aws_vpc" "local_vpc" {
  id = var.vpc_id_jenkins
  
}

resource "aws_route" "peer_route" {
  count           = length(var.route_table_ids)
  route_table_id  = var.route_table_ids[count.index]
  destination_cidr_block = data.aws_vpc.local_vpc.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_jenkins.id
}
