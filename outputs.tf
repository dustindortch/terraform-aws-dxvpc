output "id" {
  description = "VPC id"
  value       = aws_vpc.vpc.id
}

output "name" {
  description = "VPC name"
  value       = aws_vpc.vpc.tags.Name
}

output "cidr_block" {
  description = "VPC address space"
  value       = aws_vpc.vpc.cidr_block
}

output "subnets" {
  description = "VPC subnets"
  value       = aws_subnet.subnets
}