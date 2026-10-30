resource "aws_instance" "practice" {
  for_each = var.instances
  instance_type = each.value
  ami = "ami-0111419d42d14a400"
  tags = {
    Name = each.key
  }
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

# Telling Terraform what to build

#Build an EC2 instance for each environment defined in the 'instances' variable.

#The instructions - AWS, use those values to determine how the EC2 instances should be configured.

# resource "aws_instance" "practice" =	Define an AWS EC2 resource configuration named practice.
# ami = "ami-..."	Tell AWS which operating-system image to use.
# for_each = var.instances	Repeat this resource configuration for every entry in the instances map.
# instance_type = each.value	Use the instance type associated with the current entry.
# Name = each.key	Name each instance after its environment.


# The magic of each.key and each.value
# Imagine Terraform picks up each entry in your map one at a time.

# Terraform uses each key for the Name tag and each value for the instance type.

# The result is a configuration describing three EC2 instances, each named for its environment