terraform {
  # backend "s3" {
  #   bucket = "terraform-labs-backend"
  #   key = "statefiles/ec2-migrate-state-from-local.tf"
  #   region = "us-east-1"
  # }
}

provider "aws" {
    region = "us-east-1"
}

module "ec2" {
  source = "git@github.com:mesivayenduri/ec2-module.git"
}

resource "aws_instance" "my_first_terraform_ec2" {
    ami = "ami-0b72821e2f351e396"
    instance_type = "t2.micro"

    tags = {
      "Name" = "FirstInstanceByTerraform"
      "Date" = "12-12-2024"
      "Owner" = "Sai Siva"
    }
}