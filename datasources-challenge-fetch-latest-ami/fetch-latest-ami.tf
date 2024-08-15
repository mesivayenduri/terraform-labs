provider "aws" {
    region = "us-east-1"
}

data "aws_ami" "fetch_latest_ami" {
    owners = ["amazon"]
    most_recent = true
    filter {
        name = "name"
        values = ["al2023-ami-*"]
    }
}

resource "aws_instance" "my_ec2" {
    ami = data.aws_ami.fetch_latest_ami.image_id
    instance_type = "t2.micro"
}