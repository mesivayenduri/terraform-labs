# Create a DynamoDB table with name "state-lock-table" with partitionKey as LockID of string type


terraform {
  backend "s3" {
    bucket = "terraform-labs-backend"
    key = "statefiles/s3-state-lock.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-lock-table"
  }
}




resource "time_sleep" "sleep" {
    create_duration = "60s"
}

