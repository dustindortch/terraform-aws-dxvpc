terraform {
  required_version = ">= 1.3.0"
}

resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block

  tags = merge(
    {"Name" = var.name},
    var.tags
  )
}

resource "aws_subnet" "subnets" {
  for_each = var.subnets

  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = each.value.map_public_ip_on_launch
  ipv6_cidr_block         = each.value.ipv6_cidr_block != null ? each.value.ipv6_cidr_block : null

  tags = merge(
    {"Name" = each.key},
    var.tags
  )
}