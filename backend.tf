terraform {
  backend "remote" {
    organization = "datastacksdev"

    workspaces {
      name = "azure-dataplatform-terraform"
    }
  }
}
