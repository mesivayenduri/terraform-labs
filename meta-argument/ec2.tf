provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {

    ami           = "ami-0b72821e2f351e396"   # linux
#   ami           = "ami-07d9456e59793a7d5" # windows
  instance_type = "t2.micro"

  tags = {
    "Name" : "web-ec2"
  }

  #   lifecycle {
  #     ignore_changes = [ tags ]
  #   }

#   lifecycle {
#     create_before_destroy = true
#   }

    # lifecycle {
    #   prevent_destroy = true
    # }

}