provider "aws" {
    region = "us-east-1"
}

import {
  to = aws_security_group.mysg
  id = "sg-0a68bab59a12d9cff"
}
