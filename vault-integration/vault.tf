terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "4.4.0"
    }
  }
}

provider "vault" {
  address = "http://127.0.0.1:8200"
  token   = "root"
}

# resource "vault_generic_secret" "norton_secrets" {
#   path = "nortongaming/billing/dev/config"
#   data_json = jsonencode({
#     "foo"      = "bar",
#     "username" = "nortongaming",
#     "password" = "nortongaming"
#   })
# }

data "vault_generic_secret" "mysecrets" {
  path = "nortongaming/billing/dev/config"
}

output "full_secret" {
    value = data.vault_generic_secret.mysecrets.data_json
    sensitive = true
}