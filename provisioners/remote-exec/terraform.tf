terraform {
  required_providers {
    aws = {
      version = "~>5.60"
    }
  }
  backend "s3" {
    bucket = "terraform-labs-backend"
    key    = "tfstates/remote-exec.tfstate"
    region = "us-east-1"
  }
}