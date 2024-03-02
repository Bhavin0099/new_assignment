resource "aws_vpc_peering_connection" "vpc_peering_jenkins" {
  provider = aws.jenkins
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = var.peer_vpc_id_created
  peer_region = var.peer_region
  vpc_id        = var.vpc_id_jenkins
}

resource "aws_vpc_peering_connection_accepter" "peer_accepter" {
  provider = aws.peer
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_jenkins.id
  auto_accept = true
}

resource "aws_vpc_peering_connection_options" "jenkins" {
  provider                  = aws.jenkins
  vpc_peering_connection_id = aws_vpc_peering_connection_accepter.peer_accepter.id

  requester {
    allow_remote_vpc_dns_resolution = true
  }
}

resource "aws_vpc_peering_connection_options" "accepter" {
  provider                  = aws.peer
 vpc_peering_connection_id = aws_vpc_peering_connection_accepter.peer_accepter.id

  accepter {
    allow_remote_vpc_dns_resolution = true
  }
}

data "aws_route_tables" "peer" {
  provider = aws.peer
  vpc_id = var.peer_vpc_id_created
}

resource "aws_route" "peer_route" {
  provider = aws.peer
  count           = length(data.aws_route_tables.peer.ids)
  route_table_id  = data.aws_route_tables.peer.ids[count.index]
  destination_cidr_block = var.vpc_id_jenkins_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_jenkins.id
}

data "aws_route_tables" "jenkins" {
  provider = aws.jenkins
  vpc_id = var.peer_vpc_id_created
}

resource "aws_route" "jenkins_route" {
  provider = aws.peer
  count           = length(data.aws_route_tables.jenkins.ids)
  route_table_id  = data.aws_route_tables.jenkins.ids[count.index]
  destination_cidr_block = var.peer_vpc_cidr
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_jenkins.id
}
