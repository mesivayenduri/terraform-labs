provider "aws" {
    region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "allow_tls"
  }
}


resource "aws_vpc_security_group_ingress_rule" "allow_tls_ingress_https" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "${aws_eip.lb.public_ip}/32"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}