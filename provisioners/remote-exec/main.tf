resource "aws_instance" "web-app" {
    ami           = "ami-0b72821e2f351e396"
#   ami           = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  tags          = local.tags
  key_name      = "remote-exec"

  security_groups = [aws_security_group.web-app-ssh.name]

  connection {
    type        = "ssh"
    private_key = file("./remote-exec.pem")
    user        = "ec2-user"
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
        "sudo dnf update -y",
        "sudo dnf install nginx -y",
        "sudo systemctl start nginx"
    ]
  }

  provisioner "local-exec" {
    command = "echo Public IP : ${self.public_ip} >> server.log"
  }
}


resource "aws_security_group" "web-app-ssh" {
  name        = "web-app-ssh"
  description = "Allowing ssh to web-app"
  ingress = [
    {
      self             = true
      description      = "Allowing ssh to web-app"
      to_port          = "22"
      from_port        = "22"
      cidr_blocks      = ["0.0.0.0/0"]
      protocol         = "TCP"
      security_groups  = []
      prefix_list_ids  = []
      ipv6_cidr_blocks = []
    },
    {
      self             = true
      description      = "Allowing HTTP to web-app"
      to_port          = "80"
      from_port        = "80"
      cidr_blocks      = ["0.0.0.0/0"]
      protocol         = "TCP"
      security_groups  = []
      prefix_list_ids  = []
      ipv6_cidr_blocks = []
    }
  ]
  egress = [ {
    self             = true
      description      = "Allowing HTTP to web-app"
      to_port          = "0"
      from_port        = "0"
      cidr_blocks      = ["0.0.0.0/0"]
      protocol         = "-1"
      security_groups  = []
      prefix_list_ids  = []
      ipv6_cidr_blocks = []
  } ]
}