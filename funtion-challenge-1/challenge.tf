provider "aws" {
    region = "us-east-1"
}


variable region {
    default = "us-east-1"
}

variable "tags" {
    type = list
    default = [
        "firstec2", 
        "secondec2"
    ]
}

variable "ami" {
    type = map
    default = {
        "us-east-1" = "ami-0b72821e2f351e396"
        "us-east-2" = "ami-0c11a84584d4e09dd"
        "us-west-1" = "ami-0b36f2748d7665334"
    }
}

resource "aws_instance" "dev-app" {

    ami = lookup(var.ami, var.region)
    instance_type = "t2.micro"
    count = length(var.tags)

    tags = {
        Name = element(var.tags, count.index)
        CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
    }
  
}