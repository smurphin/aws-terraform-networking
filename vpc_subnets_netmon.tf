##############NETWORK MONITORING SUBNETS################


data "aws_subnet" "network-monitoring-prod-private-eu-west-1a" {
  filter {
    name   = "tag:Name"
    values = ["network-monitoring-prod-private-eu-west-1a"]
  }
}


data "aws_subnet" "network-monitoring-prod-private-eu-west-1b" {
  filter {
    name   = "tag:Name"
    values = ["network-monitoring-prod-private-eu-west-1b"]
  }
}


data "aws_subnet" "network-monitoring-prod-private-eu-west-1c" {
  filter {
    name   = "tag:Name"
    values = ["network-monitoring-prod-private-eu-west-1c"]
  }
}
