provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}

locals {
  common_tags = {
    environment  = var.environment
    billing_code = var.billing_code

    workspace = terraform.workspace
  }
}

module "main" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = var.prefix
  cidr = var.cidr_block

  azs                     = slice(data.aws_availability_zones.available, 0, 1)
  public_subnets          = [for k, v in var.public_subnets : v]
  public_subnet_names     = [for k, v in var.public_subnets : "${var.prefix}-${k}"]
  enable_dns_hostnames    = true
  public_subnet_suffix    = ""
  public_route_table_tags = { Name = "${var.prefix}-public" }
  map_public_ip_on_launch = true
  enable_nat_gateway      = false
  tags                    = local.common_tags
}
