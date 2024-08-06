provider "aws" {
    region = "us-east-1"
}

variable "ami" {
    type = string
    default = "ami-0b72821e2f351e396"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "environment" {
    type = string
    default = "production"
}

variable "region" {
    type = string
    default = "us-west-1"
}

resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = var.environment == "production" && var.region == "us-west-2" ? "m5.large" : var.instance_type
}