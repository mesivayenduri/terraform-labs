terraform {
  backend "s3" {
    bucket = "terraform-labs-backend"
    key    = "statefiles/app-team.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_first_terraform_ec2" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"

  tags = {
    "Name" = "FirstInstanceByTerraform"
  }
}


resource "aws_eip" "loadbalancer_ip" {
  instance = aws_instance.my_first_terraform_ec2.id
}

output "ec2_instance_id" {
  value = aws_instance.my_first_terraform_ec2.id
}

output "eip" {
  value = aws_eip.loadbalancer_ip.public_ip
}