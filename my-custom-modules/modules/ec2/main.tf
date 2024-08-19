provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my-ec2-instance" {
    ami = "ami-0b72821e2f351e396"
    instance_type = "t3.micro"
}