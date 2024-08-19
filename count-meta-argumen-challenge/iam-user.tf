provider "aws" {
  region = "us-east-1"
}

# Test1
# variable "new_users" {
#   type    = list(any)
#   default = ["user01", "user02", "user03"]
# }

# resource "aws_iam_user" "iam_users" {
#   name  = var.new_users[count.index]
#   count = 3
# }


# Test2
# variable "new_users" {
#   type    = list(any)
#   default = ["user01", "user02", "user03", "user04"]
# }

# resource "aws_iam_user" "iam_users" {
#   name  = var.new_users[count.index]
#   count = 4
# }

# When you add the elements in front you will face issues with count meta arguments using index

# Test3
# variable "new_users" {
#   type    = list(any)
#   default = ["user00", "user01", "user02", "user03", "user04"]
# }

# resource "aws_iam_user" "iam_users" {
#   name  = var.new_users[count.index]
#   count = 5
# }