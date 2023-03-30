data "aws_route_table" "private_1a" {
  filter {
    name   = "tag:Name"
    values = ["rt_private_1a"]
  }
}

data "aws_route_table" "private_1b" {
  filter {
    name   = "tag:Name"
    values = ["rt_private_1b"]
  }
}




resource "aws_route" "spoke_routes_private1a" {
  for_each = var.destination_cidr
  route_table_id            = data.aws_route_table.private_1a.id
  destination_cidr_block    = each.value.spoke_destination_cidr
  transit_gateway_id        = aws_ec2_transit_gateway.enterprise_wan_tgw.id
  }

resource "aws_route" "spoke_routes_private1b" {
    for_each = var.destination_cidr
    route_table_id            = data.aws_route_table.private_1b.id
    destination_cidr_block    = each.value.spoke_destination_cidr
    transit_gateway_id        = aws_ec2_transit_gateway.enterprise_wan_tgw.id
  }
