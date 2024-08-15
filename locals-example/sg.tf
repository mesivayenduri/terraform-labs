provider "aws" {
    region = "us-east-1"
}

variable "tags" {
    type = map
    default = {
        Team = "security-Team"
    }
}

locals {
    default = {
        Team = "security-Team"
        Creation-Date = formatdate("DD-MM-YYYY hh:mm ZZZ", timestamp())
    }
}

resource "aws_security_group" "sg_01" {
  name = "app-firewall"
  tags = local.default
}


resource "aws_security_group" "sg_02" {
  name = "db-firewall"
  tags = local.default
}
