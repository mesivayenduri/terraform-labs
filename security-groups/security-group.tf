provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "terraform-securitygroup" {
  name        = "terraform-securitygroup"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "terraform-securitygroup"
  }
}

resource "aws_vpc_security_group_ingress_rule" "terraform-securitygroup-inbound" {
  security_group_id = aws_security_group.terraform-securitygroup.id
  cidr_ipv4         = "0.0.0.0/16"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "terraform-securitygroup-outbound" {
  security_group_id = aws_security_group.terraform-securitygroup.id
  cidr_ipv4   = "0.0.0.0/16"
  ip_protocol = "-1"
}