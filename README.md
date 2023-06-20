# terraform-aws-dxvpc

<!-- BEGIN_TF_DOCS -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.3.0)

## Providers

The following providers are used by this module:

- <a name="provider_aws"></a> [aws](#provider\_aws) (4.57.1)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [aws_subnet.subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) (resource)
- [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) (resource)

## Required Inputs

The following input variables are required:

### <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block)

Description: CIDR block assigned to VPC

Type: `string`

### <a name="input_name"></a> [name](#input\_name)

Description: Virtual Private Cloud (VPC) name

Type: `string`

### <a name="input_subnets"></a> [subnets](#input\_subnets)

Description: Address spaces assigned to VPC

Type:

```hcl
map(object({
    cidr_block              = string
    availability_zone       = optional(string)
    map_public_ip_on_launch = optional(bool, false)
    ipv6_cidr_block         = optional(string)
  }))
```

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_tags"></a> [tags](#input\_tags)

Description: Tags to assign to VPC

Type: `map`

Default:

```json
{
  "CreatedBy": "Terraform",
  "Module": "terraform-aws-dxvpc"
}
```

## Outputs

The following outputs are exported:

### <a name="output_cidr_block"></a> [cidr\_block](#output\_cidr\_block)

Description: VPC address space

### <a name="output_id"></a> [id](#output\_id)

Description: VPC id

### <a name="output_name"></a> [name](#output\_name)

Description: VPC name

### <a name="output_subnets"></a> [subnets](#output\_subnets)

Description: VPC subnets
<!-- END_TF_DOCS -->