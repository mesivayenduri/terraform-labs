provider "aws" {
  region = local.region[terraform.workspace]
}

locals {
  region = {
    default     = "us-east-1",
    development = "us-east-1",
    production  = "us-east-1"
  }

  instance_type = {
    default     = "t2.micro"
    development = "t2.micro"
    production  = "t3.micro"
  }
}

resource "aws_instance" "web-app" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = local.instance_type[terraform.workspace]
}