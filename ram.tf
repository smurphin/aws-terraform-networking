
#######Resource-share######



resource "aws_ram_resource_share" "Enterprise_Wan_TGW" {
  name                      = "EIT_WAN_TGW_${var.environment}_prod"
  allow_external_principals = true

  tags = {
    Environment = var.environment
    Name = "resource-share-EIT_WAN_TGW_prod"
  }
}


resource "aws_ram_resource_association" "Enterprise_Wan_TGW_association" {
  resource_arn       = "arn:aws:ec2:${var.region}:${var.account_id}:transit-gateway/${aws_ec2_transit_gateway.enterprise_wan_tgw.id}"
  resource_share_arn = aws_ram_resource_share.Enterprise_Wan_TGW.arn

}

resource "aws_ram_principal_association" "account_idm_prod" {
  principal          = "023676223547"
  resource_share_arn = aws_ram_resource_share.Enterprise_Wan_TGW.arn
}
