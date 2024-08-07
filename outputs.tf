output "resource_group_id" {
  description = "The ID of the Resource Group"
  value       = module.resource_group.resource_group_id
}

output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = module.resource_group.resource_group_name
}

output "key_vault_id" {
  description = "The ID of the Key Vault"
  value       = module.key_vault.key_vault_id
}

output "key_vault_name" {
  description = "The name of the Key Vault"
  value       = module.key_vault.key_vault_name
}

output "storage_account_id" {
  description = "The ID of the Storage Account"
  value       = module.storage.storage_account_id
}

output "storage_account_name" {
  description = "The name of the Storage Account"
  value       = module.storage.storage_account_name
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint of the Storage Account"
  value       = module.storage.storage_account_primary_endpoint
}

output "databricks_workspace_id" {
  description = "The ID of the Databricks Workspace"
  value       = module.databricks.databricks_workspace_id
}

output "databricks_workspace_name" {
  description = "The name of the Databricks Workspace"
  value       = module.databricks.databricks_workspace_name
}
