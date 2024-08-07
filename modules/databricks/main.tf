<<<<<<< HEAD
resource "azurerm_databricks_workspace" "databricks_workspace" {
  name                                                = "${var.deploy_namespace}-databricks-${var.environment}-${var.deployment_id}"
  resource_group_name                                 = var.resource_group_name
  location                                            = var.location
  sku                                                 = var.sku
  managed_resource_group_name                         = "rg-${var.deploy_namespace}-adb-managed-${var.deployment_id}"
  infrastructure_encryption_enabled                   = var.infrastructure_encryption_enabled
  customer_managed_key_enabled                        = var.customer_managed_key_enabled
  public_network_access_enabled                       = var.public_network_access_enabled
  network_security_group_rules_required               = var.is_private_endpoint ? "NoAzureDatabricksRules" : "AllRules"

  tags = var.tags


}

variable "deploy_namespace" {
  description = "Deployment namespace"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "deployment_id" {
  description = "Deployment ID"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
}

variable "sku" {
  description = "SKU for the Databricks workspace"
  type        = string
  default     = "premium"
}

variable "infrastructure_encryption_enabled" {
  description = "Enable infrastructure encryption"
  type        = bool
  default     = false
}

variable "customer_managed_key_enabled" {
  description = "Enable customer-managed key"
  type        = bool
  default     = false
}


variable "managed_disk_cmk_rotation_to_latest_version_enabled" {
  description = "Enable managed disk CMK rotation to latest version"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Enable public network access"
  type        = bool
  default     = true
}

variable "is_private_endpoint" {
  description = "Flag to indicate if private endpoint is used"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
=======
resource "azurerm_databricks_workspace" "databricks_workspace" {
  name                                                = "${var.deploy_namespace}-databricks-${var.environment}-${var.deployment_id}"
  resource_group_name                                 = var.resource_group_name
  location                                            = var.location
  sku                                                 = var.sku
  managed_resource_group_name                         = "rg-${var.deploy_namespace}-adb-managed-${var.deployment_id}"
  infrastructure_encryption_enabled                   = var.infrastructure_encryption_enabled
  customer_managed_key_enabled                        = var.customer_managed_key_enabled
  public_network_access_enabled                       = var.public_network_access_enabled
  network_security_group_rules_required               = var.is_private_endpoint ? "NoAzureDatabricksRules" : "AllRules"

  tags = var.tags


}

variable "deploy_namespace" {
  description = "Deployment namespace"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "deployment_id" {
  description = "Deployment ID"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
}

variable "sku" {
  description = "SKU for the Databricks workspace"
  type        = string
  default     = "premium"
}

variable "infrastructure_encryption_enabled" {
  description = "Enable infrastructure encryption"
  type        = bool
  default     = false
}

variable "customer_managed_key_enabled" {
  description = "Enable customer-managed key"
  type        = bool
  default     = false
}


variable "managed_disk_cmk_rotation_to_latest_version_enabled" {
  description = "Enable managed disk CMK rotation to latest version"
  type        = bool
  default     = false
}

variable "public_network_access_enabled" {
  description = "Enable public network access"
  type        = bool
  default     = true
}

variable "is_private_endpoint" {
  description = "Flag to indicate if private endpoint is used"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
>>>>>>> 178d12d (tf changes)
