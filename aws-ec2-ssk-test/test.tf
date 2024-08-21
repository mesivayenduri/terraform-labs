# module "aws-ec2-ssk" {
#     source = "git@github.com:mesivayenduri/aws-ec2-ssk.git"
# }

# output "instance_creationDate" {
#     value = module.aws-ec2-ssk.creationDate
# }

# output "publicip" {
#     value = module.aws-ec2-ssk.public_ip
# }

module "ec2" {
  source  = "mesivayenduri/ec2/aws"
  version = "0.0.1"
}

output "instance_creationDate" {
    value = module.ec2.creationDate
}

output "publicip" {
    value = module.ec2.public_ip
}