provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "allowed" {
  name        = "allowed_ips"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "allow_ips"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allowed.id
  cidr_ipv4         = "${data.terraform_remote_state.white_list_ips.outputs.eip}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

