provider "aws" {
  region = "us-east-1"
}

# resource "aws_iam_user" "users" {
#   for_each = toset(["user01", "user02", "user03"])
#   name     = each.key
# }


# resource "aws_iam_user" "users" {
#   for_each = toset(["user00", "user01", "user02", "user03"])
#   name     = each.key
# }


resource "aws_instance" "myec2" {
    for_each = {
      "webapp_1" = "t2.micro",
      "webapp_2" = "t3.micro"
    }

    instance_type = each.value
    ami = "ami-0b72821e2f351e396"
    
    tags = {
      "Name" = each.key
    }

}