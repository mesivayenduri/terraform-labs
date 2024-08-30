data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "my_first_terraform_ec2" {
  ami           = data.aws_ami.ami.image_id
  instance_type = var.instancetype
  tags          = local.tags
}

output "ami-used" {
  value = data.aws_ami.ami.image_id
}