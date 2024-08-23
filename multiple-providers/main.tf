provider "aws" {
  region = "us-east-1"
  alias  = "prod"
}

provider "aws" {
  region = "ap-south-1"
  alias  = "dev"
}

resource "aws_security_group" "sg1" {
  provider    = aws.dev
  name        = "dev"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "developmet-rules"
  }
}

resource "aws_security_group" "sg2" {
  provider    = aws.prod
  name        = "prod"
  description = "Allow TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "production-rules"
  }
}
