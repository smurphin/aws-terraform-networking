terraform {
  backend "s3" {
    bucket       = "terraform-state-network-monitoring-prod"
    key          = "enterprisetransitgateway/network-monitoring-prod"
    region       = "eu-west-1"
    # Role to assume for state access
    role_arn     = 
    session_name = "enterprisetransitgateway"
  }
}
