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


// Single Line Comment
# Single Line Comment

/*
    Multi
    line
    comment
*/

output "arn" {
    value = aws_iam_user.digital_users[*].arn
}

output "iam-names" {
    value = aws_iam_user.digital_users[*].name
}

output "iam-map" {
    value = zipmap(aws_iam_user.digital_users[*].name, aws_iam_user.digital_users[*].arn)
}