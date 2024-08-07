<<<<<<< HEAD
resource "azurerm_data_factory" "data_factory" {
  name                = "${var.deploy_namespace}-DataFactory-${var.environment}-${var.deployment_id}"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    Environment = var.environment
  }

  identity {
    type = "SystemAssigned"
  }
}

variable "deploy_namespace" {}
variable "environment" {}
variable "deployment_id" {}
variable "location" {}
variable "resource_group_name" {}
=======
resource "azurerm_data_factory" "data_factory" {
  name                = "${var.deploy_namespace}-DataFactory-${var.environment}-${var.deployment_id}"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    Environment = var.environment
  }

  identity {
    type = "SystemAssigned"
  }
}

variable "deploy_namespace" {}
variable "environment" {}
variable "deployment_id" {}
variable "location" {}
variable "resource_group_name" {}
>>>>>>> 178d12d (tf changes)
