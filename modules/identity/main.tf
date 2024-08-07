resource "azurerm_user_assigned_identity" "managed_identity" {
  name                = "${var.deploy_namespace}-ManagedIdentity-${var.environment}-${var.deployment_id}"
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_role_assignment" "role_assignment" {
  principal_id         = azurerm_user_assigned_identity.managed_identity.principal_id
  role_definition_name = "Owner"
  scope                = var.resource_group_id
}

variable "deploy_namespace" {}
variable "environment" {}
variable "deployment_id" {}
variable "resource_group_name" {}
variable "location" {}
variable "resource_group_id" {}
