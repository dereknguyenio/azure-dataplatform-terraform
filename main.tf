terraform {
  required_version = ">= 0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = ">= 1.0"
    }
  }
}

data "azurerm_client_config" "example" {}


module "resource_group" {
  source           = "./modules/resource_group"
  deploy_namespace = var.deploy_namespace
  environment      = var.environment
}

module "identity" {
  source              = "./modules/identity"
  deploy_namespace    = var.deploy_namespace
  environment         = var.environment
  deployment_id       = var.deployment_id
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  resource_group_id   = module.resource_group.resource_group_id
}

module "key_vault" {
  source              = "./modules/key_vault"
  deploy_namespace    = var.deploy_namespace
  environment         = var.environment
  deployment_id       = var.deployment_id
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  tenant_id           = data.azurerm_client_config.example.tenant_id
}

module "storage" {
  source              = "./modules/storage"
  deploy_namespace    = var.deploy_namespace
  environment         = var.environment
  deployment_id       = var.deployment_id
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
}

module "data_factory" {
  source              = "./modules/data_factory"
  deploy_namespace    = var.deploy_namespace
  environment         = var.environment
  deployment_id       = var.deployment_id
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
}

module "purview" {
  source              = "./modules/purview"
  deploy_namespace    = var.deploy_namespace
  environment         = var.environment
  deployment_id       = var.deployment_id
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
}

module "databricks" {
  source = "./modules/databricks"
  environment = var.environment
  deployment_id = var.deployment_id
  deploy_namespace = var.deploy_namespace
  resource_group_name = module.resource_group.resource_group_name
  location = module.resource_group.location
  sku = var.sku
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  customer_managed_key_enabled = var.customer_managed_key_enabled
  managed_disk_cmk_rotation_to_latest_version_enabled = var.managed_disk_cmk_rotation_to_latest_version_enabled
  public_network_access_enabled = var.public_network_access_enabled
  is_private_endpoint = var.is_private_endpoint
  tags = var.tags
}

# module "fabric_capacity" {
#   source            = "./modules/fabric_capacity"
#   basename          = var.deploy_namespace
#   resource_group_id = module.resource_group.resource_group_id
#   location          = module.resource_group.location
#   tags              = var.tags
#   admin_email       = var.admin_email
#   sku               = var.fsku
# }

# module "azure_sql_db" {
#   source                       = "./modules/azure_sql_db"
#   deploy_namespace             = var.deploy_namespace
#   resource_group_name          = module.resource_group.resource_group_name
#   location                     = module.resource_group.location
#   administrator_login          = var.administrator_login
#   administrator_login_password = var.administrator_login_password
#   tags                         = var.tags
# }