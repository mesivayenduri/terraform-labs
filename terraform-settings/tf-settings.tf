terraform {
  required_version = "1.9.2"
  required_providers {
    aws = {
        version = "5.56.0"
        source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_user" "digital_users" {
  name = "supplychain-digital-admin-${count.index}"

  count = 3

  tags = {
    "CreationDate" : formatdate("DD-MM-YYYY hh:mm:ss ZZZ", timestamp())
    "Account" : "NortonGaming_Admin"
    "Vertical": "Supplychain-digital"
  }
}

output "digital_users_arn" {
    value = aws_iam_user.digital_users[*].arn
}