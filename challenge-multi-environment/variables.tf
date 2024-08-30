# variable "ami" {}
variable "instancetype" {}
variable "servername" {}
variable "environment" {}
variable "region" {}

locals {
  tags = {
    "Name"         = var.servername
    "CreationDate" = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
    "Environment"  = var.environment
    "AMI"          = data.aws_ami.ami.arn
  }
}