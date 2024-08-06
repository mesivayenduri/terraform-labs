provider "aws" {
    region = var.region
}

variable region {
    type = string
    default = "us-east-1"
}

variable "instances" {
    type = list
    default = ["dev-app1", "dev-app2"]
}

# With in variables section we cannot use functions
variable "tags" {
    type = map
    default = {
        "Name" : "Web"
    }
}

locals {
  tags = {
    CreationDate : formatdate("DD MMM YYYY ZZZ", timestamp())
  }
}

resource "aws_instance" "ec2-instances" {
    count = length(var.instances)
    ami = "ami-0b72821e2f351e396"
    instance_type = "t2.micro"
    # tags = var.tags    
    tags = local.tags
}   