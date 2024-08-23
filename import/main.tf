provider "aws" {
    region = "us-east-1"
}

import {
  to = aws_security_group.mysg
  id = "sg-0a68bab59a12d9cff"
}



# If you use terraform plan -generate-config-out=mysg.tf... This will throw an error saying  Error: Too Many Command line arguments.

# Command: terraform plan -generate-config-out="mysg.tf"