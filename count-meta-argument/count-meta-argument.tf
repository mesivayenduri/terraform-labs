provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_first_terraform_ec2" {
    ami = "ami-0b72821e2f351e396"
    instance_type = "t2.micro"
    count = 3

    tags = {
      "Name" : "payment-system-${count.index}"
    }
}

resource "aws_iam_user" "iamuser" {
    name = var.iamuser[count.index]
    count = 3
}

variable "iamuser" {
    type = list
    default = ["khushi", "badri", "pawan"]
}