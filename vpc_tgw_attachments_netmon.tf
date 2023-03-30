


#### TRANSIT GATEWAY ATTACHMENTS NETWORK MONITORING PROD####

resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_attachment_network_monitoring_prod" {
  subnet_ids         = ["${data.aws_subnet.network-monitoring-prod-private-eu-west-1a.id}","${data.aws_subnet.network-monitoring-prod-private-eu-west-1b.id}","${data.aws_subnet.network-monitoring-prod-private-eu-west-1c.id}"]
  transit_gateway_id = "${aws_ec2_transit_gateway.enterprise_wan_tgw.id}"
  vpc_id             = "${data.aws_vpc.je_vpc_network_monitoring_prod.id}"
  tags = {
    Name = "network-monitoring-vpc-${var.environment}-prod"
  }
}
