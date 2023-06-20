variable "name" {
  type        = string
  description = "Virtual Private Cloud (VPC) name"
}

variable "cidr_block" {
  type        = string
  description = "CIDR block assigned to VPC"
}

variable "subnets" {
  type        = map(object({
    cidr_block              = string
    availability_zone       = optional(string)
    map_public_ip_on_launch = optional(bool, false)
    ipv6_cidr_block         = optional(string)
  }))
  description = "Address spaces assigned to VPC"
}

variable "tags" {
  description = "Tags to assign to VPC"
  default = {
    CreatedBy = "Terraform"
    Module    = "terraform-aws-dxvpc"
  }
}