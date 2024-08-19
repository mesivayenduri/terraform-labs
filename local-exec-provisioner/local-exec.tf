provider "aws" {
  region = "us-east-1"
}

variable "ec2_names" {
  type    = list(any)
  default = ["webapp-1", "webapp-2"]
}

resource "aws_instance" "ec2" {
  ami           = "ami-0b72821e2f351e396"
  instance_type = "t2.micro"

  for_each = toset(var.ec2_names)

  tags = {
    "Name" = each.value
  }

  # If we dont mention "when" , it is by default create time provisioner. Also you can specifically mention "when=true"
  provisioner "local-exec" {
    command = "echo1 ${each.value} :: ${self.public_ip} >> host_to_ip.txt"
  }

  # destroy time provisioner
  provisioner "local-exec" {
    when    = destroy
    command = "echo VMs destroyed successfully >> vm_destroy2.txt"
  }
}