## Objective

My aim was to get hands-on experience configuring EC2 instances for development, testing and production.

## Concepts Practised
map(string), input variables, terraform.tfvars, for_each, each.key and each.value.

## Configuration

1) Variables.tf

2) Terraform.tfvars

3) Main.tf

## Validation and Testing

The Terraform configuration was validated using the following commands:

terraform fmt — formatted the Terraform configuration files.

terraform validate — checked the configuration for syntax and configuration errors.

aws configure get region — confirmed the AWS region configured in the CLI (eu-north-1).

## Lessons Learned

Terraform variables: I learned how to define input variables and supply values through terraform.tfvars, separating configuration from resource definitions.

Maps and for_each: I explored how a map of strings can define instance types for multiple environments, and how each.key and each.value access the environment name and corresponding instance type.

AWS regional resources: I learned that AMIs are region-specific and that the selected AMI must be available in the target region.

Troubleshooting: Practised investigating configuration issues and using Terraform formatting and validation commands to identify and resolve problems.