### TRANSIT GATEWAY ###

resource "aws_ec2_transit_gateway" "enterprise_wan_tgw" {
  description = "enterprise wan transitgateway"
  amazon_side_asn = var.tgw_bgp_asn
  default_route_table_propagation = "enable"
  auto_accept_shared_attachments = "enable"
  tags = {
    Name = "enterprise-wan-transit-gateway-${var.environment}-${var.region}-prod"
  }
}

resource "aws_ec2_transit_gateway_route_table" "enterprise_wan_tgw_rt" {
  transit_gateway_id = aws_ec2_transit_gateway.enterprise_wan_tgw
  tags = {
    Name = "enterprise-wan-transit-gateway-${var.environment}-${var.region}-prod-tgw-rt"
  }
}
