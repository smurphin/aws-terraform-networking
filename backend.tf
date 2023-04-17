terraform {
  backend "s3" {
    bucket       = "terraform-state"
    key          = "aws-networking"
    region       = "eu-west-1"
    # Role to assume for state access
    #role_arn     = 
    #session_name = "enterprisetransitgateway"
  }
}
