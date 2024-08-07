output "databricks_workspace_id" {
  description = "The ID of the Databricks Workspace"
  value       = azurerm_databricks_workspace.databricks_workspace.id
}

output "databricks_workspace_name" {
  description = "The name of the Databricks Workspace"
  value       = azurerm_databricks_workspace.databricks_workspace.name
}
