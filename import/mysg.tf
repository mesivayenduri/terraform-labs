# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-0a68bab59a12d9cff"
resource "aws_security_group" "mysg" {
  description = "Manually Create SG"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/32"]
    description      = "Allowing HTTP Traffic Inside"
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
    }, {
    cidr_blocks      = ["0.0.0.0/32"]
    description      = "Allowing HTTPS traffic Inside"
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
  }]
  name                   = "manaul-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "manaual-sg"
  }
  tags_all = {
    Name = "manaual-sg"
  }
  vpc_id = "vpc-08c948f7a64c7aa2f"
}
