terraform {
  required_providers {
    aws = {
      #   version = "~>4.0"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

}


resource "aws_instance" "myec2" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"
}