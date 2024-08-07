resource "azurerm_key_vault" "key_vault" {
  name                = "kv-df-${var.environment}${var.deployment_id}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = "standard"
  tenant_id           = var.tenant_id

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

variable "location" {
  description = "Location"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}
