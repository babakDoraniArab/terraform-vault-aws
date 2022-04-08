terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "bablido"

    workspaces {
      name = "vault-secrets"
    }
  }
}
