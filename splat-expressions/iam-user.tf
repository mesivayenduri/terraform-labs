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

# SPLAT Expression [*] is used to access attributes of multiple resources of same type at a time.
# For example if you are creating 3 iam_users and you want to output arn's of 3 users at a time you can use splat expression as below.

output "digital_users_arn" {
    value = aws_iam_user.digital_users[*].arn
}