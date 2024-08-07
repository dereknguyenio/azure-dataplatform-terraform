<<<<<<< HEAD
resource "azurerm_storage_account" "storage_account" {
  name                     = "${lower(substr(var.deploy_namespace, 0, 11))}st${substr(lower(var.environment), 0, 3)}${var.deployment_id}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_storage_container" "bronze_container" {
  name                  = "bronze"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "silver_container" {
  name                  = "silver"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "gold_container" {
  name                  = "gold"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

variable "deploy_namespace" {}
variable "environment" {}
variable "deployment_id" {}
variable "location" {}
variable "resource_group_name" {}
=======
resource "azurerm_storage_account" "storage_account" {
  name                     = "${lower(substr(var.deploy_namespace, 0, 11))}st${substr(lower(var.environment), 0, 3)}${var.deployment_id}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  is_hns_enabled           = true

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_storage_container" "bronze_container" {
  name                  = "bronze"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "silver_container" {
  name                  = "silver"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "gold_container" {
  name                  = "gold"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

variable "deploy_namespace" {}
variable "environment" {}
variable "deployment_id" {}
variable "location" {}
variable "resource_group_name" {}
>>>>>>> 178d12d (tf changes)
