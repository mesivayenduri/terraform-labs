provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_first_terraform_ec2" {
    ami = "ami-0b72821e2f351e396"
    instance_type = var.map_types["us-west-1"]

    tags = var.tags
}


variable "list_types" {
    type = list
    default = ["t2.nano", "t2.small"]
}

variable "map_types" {
    type = map
    default = {
        "us-east-1": "t3.small"
        "us-west-1": "m4.large"
    }
}

variable "tags" {
    type = map
    default = {
        "Name": "FirstInstance"
        "Environment": "Development"
        "Owner": "Sai Siva Yenduri"
    }
}