# Terraform Variables

## What are variables?

Variables are value placeholders, like a labelled container that holds a particular value.
Using variables creates more dynamic and less-error prone code, by eliminating the need to hard code. Once 
## Input variables

Input variables allow us to customise a configuration.

Example:

```hcl
variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.micro"
}

##  Variable values

Values can be provided through a terraform.tfvars file.
Example:
instance_type = "t2.micro

## Variable types
- string: a single text value.
- number: a numeric value.
- bool: true or false.
- list(string): a list of strings.
- map(string): key-value pairs where each value is a string.

## Challenges

In my first attempt I experienced an issue configuring my AMI. The main issue was my chosen AMI was unavailable in my selected region.
I overcame this by confirming by region in Ubuntu: command - AWS configure get region. The output was eu-north-1, so I changed the
configuration to reflect the correct format and confirmed it was place by using: terraform format & terraform validate. I also came across an
error-code because my 'provider' was not configured properly. I had to use the Terraform directory to find the code for displaying my provider. 



## Key lesson
variables.tf defines the variable and its expected type.
terraform.tfvars supplies the actual value.
main.tf uses the variable in the infrastructure configuration.
