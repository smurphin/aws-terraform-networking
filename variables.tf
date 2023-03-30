

variable "region" {
  default = "eu-west-1"
  type = string
}

variable "region_prefix" {
  default = "eu-west-"
  type = string
}

variable environment {}

variable tgw_bgp_asn {
  type = string
}

variable vpn_spoke {
  default = {}
  type = map(object({
    spoke_bgp_asn = string
    spoke_public_ip = string
  }))
}

variable ipsec_type {
  default = "ipsec.1"
  type = string
}

variable destination_cidr {
  default = {}
  type = map(object({
    spoke_destination_cidr = string
  }))
}



variable "primary_az" {
  default = "1a"
  type = string
}

variable "secondary_az" {
  default = "1b"
  type = string
}



variable "account_id" {}
