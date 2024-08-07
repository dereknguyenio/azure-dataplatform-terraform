variable "subscription_id" {
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  description = "Azure Tenant ID"
}

variable "deploy_namespace" {
  description = "Deployment namespace"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

# variable "administrator_login" {
#   description = "Administrator login"
#   type        = string
# }

# variable "administrator_login_password" {
#   description = "Administrator login password"
#   type        = string
# }

# variable "admin_email" {
#   description = "Fabric administrator email"
#   type        = string
# }


variable "location" {
  description = "Location of the resource group."
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}

variable "module_enabled" {
  description = "Variable to enable or disable the module."
  type        = bool
  default     = true
}

variable "sku" {
  description = "SKU name"
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

variable "managed_services_cmk_key_vault_key_id" {
  description = "Key Vault Key ID for managed services"
  type        = string
  default     = ""
}

variable "managed_disk_cmk_key_vault_key_id" {
  description = "Key Vault Key ID for managed disks"
  type        = string
  default     = ""
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

variable "deployment_id" {
  description = "Deployment ID"
  type        = string
}