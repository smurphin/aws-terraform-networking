#####DATA NETWORK MONITORING VPC###

data "aws_vpc" "je_vpc_network_monitoring_prod" {
  filter {
    name   = "tag:Name"
    values = ["network-monitoring-prod"]
  }
}
