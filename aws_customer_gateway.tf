resource "aws_customer_gateway" "spoke_vpn" {
  for_each = var.vpn_spoke
  bgp_asn    =  each.value.spoke_bgp_asn
  ip_address = each.value.spoke_public_ip
  type       = var.ipsec_type

  tags = {
    Name = "${each.key}-CGW"
  }
}
