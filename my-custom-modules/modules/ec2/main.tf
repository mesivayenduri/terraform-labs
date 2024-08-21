
terraform {
    required_providers {
      aws = {
        version = "5.56.0"
        source = "hashicorp/aws"
      }
    }
}

resource "aws_instance" "my-ec2-instance" {
    ami = var.ami
    instance_type = var.instance_type
}

output "instance_id" {
  value = aws_instance.my-ec2-instance.id
}