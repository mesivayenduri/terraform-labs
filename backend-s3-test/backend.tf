terraform {
  backend "s3" {
    bucket = "terraform-labs-backend"
    key    = "tfstates"
    region = "us-east-1"
  }
}
