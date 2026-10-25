variable "instances" {
  type        = map(string)
  description = "EC2 instance types for each environment"
}

#Defining what Terraform expects - 

#"Terraform, this is the type of information I expect you to receive."

#Create an input variable called 'instances' that is a map of strings (keys or labels linked with values. Ex: Development = t2.micro).

#String = each entry will contain text

#Decscrip = explains what this variable is for.

 #If I were ordering a custom customised computers, the variable list would be the order form template. 

 #The keys would be the labels for each computer and the values would be the specifications for each computer.
   
