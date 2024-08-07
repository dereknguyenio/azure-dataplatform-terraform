resource "azurerm_purview_account" "purview_account" {
  name                = "${var.deploy_namespace}-Purview-${var.environment}-${var.deployment_id}"
  resource_group_name = var.resource_group_name
  location            = var.location

  identity {
    type = "SystemAssigned"
  }
}

variable "deploy_namespace" {}
variable "environment" {}
variable "deployment_id" {}
variable "location" {}
variable "resource_group_name" {}
