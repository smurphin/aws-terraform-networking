resource "aws_vpn_connection" "spoke_vpn" {
  for_each = var.vpn_spoke
  customer_gateway_id = aws_customer_gateway.spoke_vpn[each.key].id
  transit_gateway_id  = aws_ec2_transit_gateway.enterprise_wan_tgw.id
  type                = var.ipsec_type
  tags = {
    Name = "${each.key}-VPN-connection"
  }
}
