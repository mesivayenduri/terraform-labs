locals {
  tags = {
    "Name" : "web-app",
    "CreationDate" : formatdate("DD-MM-YYYY hh:mm:ss ZZZ", timestamp())
  }
}