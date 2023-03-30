# AWS Networking Terraform Module

This Terraform module creates and manages networking components in AWS. Specifically, it creates the following resources:

- VPC
- Subnets
- Internet Gateway
- Route Table
- NAT Gateway

This module can be used to create a new VPC or to manage an existing one.

## Usage

To use this module, you can simply include the following code in your Terraform configuration:

```hcl
module "aws_networking" {
  source = "git@github.com:<your-username>/terraform-aws-networking.git"

  vpc_cidr_block = "10.0.0.0/16"
  public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidr_blocks = ["10.0.3.0/24", "10.0.4.0/24"]
}
