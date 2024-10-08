provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_first_terraform_ec2" {
    ami = "ami-0b72821e2f351e396"
    instance_type = "t2.micro"

    tags = {
      "Name" = "FirstInstanceByTerraform"
      "Date" = "12-12-2024"
      "Owner" = var.username
    }
}


output "tag-username" {
    value = "Username is ${var.username}"
    sensitive = true
}

output "tag-password" {
    value = var.password
    sensitive = true
}