provider "aws" {
    region = "us-east-1"
}

module "ec2" {
    source = "../../modules/ec2"
}

resource "aws_eip" "lb" {
  instance = module.ec2.instance_id
  domain   = "vpc"
}