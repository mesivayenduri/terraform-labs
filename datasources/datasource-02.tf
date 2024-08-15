provider "aws" {
    region = "us-east-1"   
}

data "aws_security_groups" "sg-data" {}