# resource "azapi_resource" "fab_capacity" {
#   type                      = "Microsoft.Fabric/capacities@2022-07-01-preview"
#   name                      = "fab${var.basename}"
#   parent_id                 = var.resource_group_id
#   location                  = var.location
#   schema_validation_enabled = false

#   body = jsonencode({
#     properties = {
#       administration = {
#         members = [
#           var.admin_email
#         ]
#       }
#     }
#     sku = {
#       name = var.fsku,
#       tier = "Fabric"
#     }
#   })
#   tags = var.tags

#   count = var.module_enabled ? 1 : 0
# }

# variable "basename" {
#   description = "Basename of the module"
#   type        = string
# }

# variable "resource_group_id" {
#   description = "Resource group ID"
#   type        = string
# }

# variable "location" {
#   description = "Location of the resource group"
#   type        = string
# }

# variable "tags" {
#   description = "Tags to apply to resources"
#   type        = map(string)
#   default     = {}
# }

# variable "module_enabled" {
#   description = "Variable to enable or disable the module"
#   type        = bool
#   default     = true
# }

# variable "fsku" {
#   description = "SKU name"
#   type        = string
#   default     = "F2"
# }

# variable "admin_email" {
#   description = "Fabric administrator email"
#   type        = string
# }
