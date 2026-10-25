# Terraform for_each

## What is for_each?
for_each is a Terraform meta-argument which enables the creation of multiple instances of a resource using a map or a set of strings. Each resource is identified by a unique key.


## How does it work?
for_each creates a key-based resource, which means deleting a specific resource bears no impact on the identity of other existing resources. This is in contrast to count which is an index-based resource.


## Practical example from my exercises

```hcl




## What I learned or struggled with