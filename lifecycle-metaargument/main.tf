terraform {
  required_providers {
    aws = {
      version = "5.64"
    }
  }

  backend "s3" {
    bucket = "terraform-labs-backend"
    key    = "statefiles/lifecycle.tf"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec1" {
  #   ami           = "ami-0b72821e2f351e396"
  ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"

  tags = {
    "Name"  = "FirstInstanceByTerraform"
    "Date"  = "12-12-2024"
    "Owner" = "Sai Siva"
    "Role"  = "Billing"
  }

  lifecycle {
    create_before_destroy = true
    ignore_changes = [
      tags["Environment"]
    ]
  }
}