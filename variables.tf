# Dynamically pass in the instance type as a variable
variable "my_instance_type" {
  type = string
  description = "My instance type variable"
}

# Dynamically pass in the instance tags as a variable
variable "instance_tags" {
  type = object({
    Name = string
    Brian = number
  })
  description = "My instance tags"
}