provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_first_terraform_ec2" {
    ami = var.ami
    instance_type = var.instance_type

    tags = {
      "Name" = "FirstInstanceByTerraform"
    }
}

resource "aws_iam_user" "monitoring" {
  name = var.iam_user
}