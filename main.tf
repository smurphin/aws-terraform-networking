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

}
