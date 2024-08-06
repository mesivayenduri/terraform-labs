provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_user" "labs" {
  name = "labs"
}


resource "aws_iam_user_policy" "labs_ec2" {
  name   = "labs-ec2"
  user   = aws_iam_user.labs.name
  policy = file("./labs.json")
}