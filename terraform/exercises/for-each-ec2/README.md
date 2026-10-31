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

## Evidence

### Terraform Plan
<img width="961" height="172" alt="Screenshot 2026-10-30 075300" src="https://github.com/user-attachments/assets/6171c5b2-e08c-4ef4-bbf6-cc28d0cf0fa6" />


### EC2 Instances
<img width="1107" height="212" alt="Screenshot 2026-10-30 080801" src="https://github.com/user-attachments/assets/f66310f7-a7bd-47e4-b5b3-c95ffd87ee24" />
<img width="1516" height="142" alt="Screenshot 2026-10-30 080824" src="https://github.com/user-attachments/assets/af97d1f3-b8a9-4542-a2be-c6becc74c300" />

### Challenges Producing Plan
<img width="1360" height="247" alt="Screenshot 2026-10-28 162319" src="https://github.com/user-attachments/assets/fc3022c5-a64b-4342-8dd6-7a45349d3ca4" />

