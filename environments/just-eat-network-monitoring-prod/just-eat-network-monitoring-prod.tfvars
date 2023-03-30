environment = "eit-networks"

tgw_bgp_asn = "64600"

region = "eu-west-1"

account_id = "002157710846"



vpn_spoke = {
  "test_vSRX" = {
    spoke_bgp_asn = "64598"
    spoke_public_ip = "52.214.0.229"
  },

  "Paris-Scoober_PSO-FW_ISP1" = {
    spoke_bgp_asn = "64612"
    spoke_public_ip = "85.69.169.118"
  },

}



destination_cidr = {
  "PSO" = {
    spoke_destination_cidr = "10.150.224.16/28"
  }
}
