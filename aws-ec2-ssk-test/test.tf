module "aws-ec2-ssk" {
    source = "git@github.com:mesivayenduri/aws-ec2-ssk.git"
}

output "instance_creationDate" {
    value = module.aws-ec2-ssk.creationDate
}

output "publicip" {
    value = module.aws-ec2-ssk.public_ip
}