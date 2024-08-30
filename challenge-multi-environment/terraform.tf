terraform {
    required_version = "~>1.9.2"
    required_providers {
      aws = {
        version = "~>5.64"
        source = "hashicorp/aws"
      }
    }
}