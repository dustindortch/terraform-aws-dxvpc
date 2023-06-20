terraform {
  required_providers {
    test = {
      source = "terraform.io/builtin/test"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

locals {
  name       = "vpc-test-virtual-private-cloud"
  cidr_block = "10.0.1.0/24"

  subnets = {
    "default" = {
      cidr_block  = "10.0.1.0/26"
    }
    "subnet1a" = {
      cidr_block  = "10.0.1.64/26"
    }
    "subnet1b" = {
      cidr_block  = "10.0.1.128/26"
    }
  }
}

module "main" {
  source = "../.."

  name       = local.name
  cidr_block = local.cidr_block
  subnets    = local.subnets
}

resource "test_assertions" "defaults" {
  component = "defaults"

  equal "name" {
    description = "VPC name is vpc-test-virtual-private-cloud"
    got         = module.main.name
    want        = local.name
  }

  equal "cidr_block" {
    description = "VPC CIDR block is \"10.0.1.0/24\""
    got         = module.main.cidr_block
    want        = local.cidr_block
  }

  equal "default" {
    description = "Default subnet created"
    got         = module.main.subnets["default"].tags_all.Name
    want        = "default"
  }
}