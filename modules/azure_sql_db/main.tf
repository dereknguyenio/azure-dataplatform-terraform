# resource "azurerm_sql_server" "sql_server" {
#   name                         = "${var.deploy_namespace}-sql-${var.environment}"
#   resource_group_name          = var.resource_group_name
#   location                     = var.location
#   version                      = "12.0"
#   administrator_login          = var.administrator_login
#   administrator_login_password = var.administrator_login_password

#   tags = var.tags
# }

# resource "azurerm_sql_database" "sql_database" {
#   name                = "${var.deploy_namespace}-db-${var.environment}"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   server_name         = azurerm_sql_server.sql_server.name

#   sku_name   = "GP_S_Gen5_2"
#   min_capacity = 0.5
#   max_capacity = 2
#   auto_pause_delay_in_minutes = 60

#   tags = var.tags
# }

# variable "deploy_namespace" {
#   description = "Deployment namespace"
#   type        = string
# }

# variable "environment" {
#   description = "Environment name"
#   type        = string
# }

# variable "resource_group_name" {
#   description = "Resource group name"
#   type        = string
# }

# variable "location" {
#   description = "Location of the resource group"
#   type        = string
# }

# variable "administrator_login" {
#   description = "Administrator login for SQL Server"
#   type        = string
# }

# variable "administrator_login_password" {
#   description = "Administrator login password for SQL Server"
#   type        = string
# }

# variable "tags" {
#   description = "Tags to apply to resources"
#   type        = map(string)
#   default     = {}
# }
