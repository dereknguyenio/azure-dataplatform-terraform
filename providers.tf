provider "azurerm" {
  features {}
  skip_provider_registration = true

  tenant_id = var.tenant_id
}

