data "terraform_remote_state" "white_list_ips" {
  backend = "s3"

  config = {
    bucket = "terraform-labs-backend"
    key    = "statefiles/app-team.tfstate"
    region = "us-east-1"
  }


}