terraform {
  required_version = "~>1.9.2"
  required_providers {
    aws = {
      version = "~>5.64"
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket         = "terraform-labs-backend"
    key            = "multi-environment/${terraform.workspace}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}