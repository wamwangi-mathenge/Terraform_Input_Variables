# Configure the AWS Provider
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# variable "my_instance_type" {
#   type = string
#   description = "My instance type variable"
# }

## Best practice not to include variables in the main.tf file
## Create a separate variables.tf file to contain all the variables

resource "aws_instance" "input_variables" {
  ami = "ami-08bf0e5db5b302e19"
  instance_type = var.my_instance_type

  tags = var.instance_tags
}
