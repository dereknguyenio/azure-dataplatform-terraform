<<<<<<< HEAD
resource "azurerm_resource_group" "resource_group" {
  name     = "${var.deploy_namespace}-rg-${var.environment}"
  location = "eastus"

  tags = {
    "Description"   = "Resource group for Purview and Data Lake environment"
    "Environment"   = "${var.environment}"
    "Owner"         = "Data Foundation"
    "CostCenter"    = "1234"
    "Project"       = "Project Data Foundation"
    "GitHubLink"    = "https://github.com/dereknguyenio/purview-terraform"
    "ManagedBy"     = "Terraform"
  }
}

variable "deploy_namespace" {}
variable "environment" {}

output "resource_group_name" {
  value = azurerm_resource_group.resource_group.name
}

output "location" {
  value = azurerm_resource_group.resource_group.location
}

output "resource_group_id" {
  value = azurerm_resource_group.resource_group.id
}
=======
resource "azurerm_resource_group" "resource_group" {
  name     = "${var.deploy_namespace}-rg-${var.environment}"
  location = "eastus"

  tags = {
    "Description"   = "Resource group for Purview and Data Lake environment"
    "Environment"   = "${var.environment}"
    "Owner"         = "Data Foundation"
    "CostCenter"    = "1234"
    "Project"       = "Project Data Foundation"
    "GitHubLink"    = "https://github.com/dereknguyenio/purview-terraform"
    "ManagedBy"     = "Terraform"
  }
}

variable "deploy_namespace" {}
variable "environment" {}

output "resource_group_name" {
  value = azurerm_resource_group.resource_group.name
}

output "location" {
  value = azurerm_resource_group.resource_group.location
}

output "resource_group_id" {
  value = azurerm_resource_group.resource_group.id
}
>>>>>>> 178d12d (tf changes)
