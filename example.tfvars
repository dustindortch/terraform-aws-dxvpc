name       = "vpc-standard-test"
cidr_block = "10.0.1.0/24"

subnets = {
  "default" = {
    cidr_block = "10.0.1.0/26"
  }
  "subnet1a" = {
    cidr_block = "10.0.1.64/26"
  }
  "subnet1b" = {
    cidr_block = "10.0.1.128/26"
  }
}
