provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "variable_precedence" {
    ami = var.ami
    instance_type = var.instance_type

    tags = {
      "Name" = "FirstInstanceByTerraform"
    }
}