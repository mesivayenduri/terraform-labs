module "custom" {
  source  = "mesivayenduri/custom/aws"
  version = "v0.0.2"

  region       = "us-east-1"
  image        = ["ami-066784287e358dad1", "ami-066784287e358dad1"]
  instancetype = ["t2.micro", "t2.micro"]
  servers      = 2
  port_and_protocol = {
    "http"  = "8080"
    "https" = "443"
    "ssh"   = "22"
  }
}