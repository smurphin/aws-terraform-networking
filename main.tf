terraform {
  #required_version = ">= 0.11.0"
  #backend "artifactory" {
  #  url      = "https://artifactory.cd.je-labs.com/artifactory"
  #}

  required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}



provider "aws" {
 region = "${var.region}"

  assume_role {
    # The account id changes depending on environment. Match id to the environment you deploy to.
    # You can find the account id in backstage.
    role_arn     = 
    session_name = "enterprisetransitgateway"
  }
}
