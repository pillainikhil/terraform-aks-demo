output "app_resource_group_id" {
  value       = azurerm_resource_group.app_rg.id
  description = "The ID of the application resource group"
}

output "tfstate_resource_group_id" {
  value       = azurerm_resource_group.tfstate_rg.id
  description = "The ID of the Terraform state resource group"
}

output "tfstate_storage_account_name" {
  value       = azurerm_storage_account.tfstate_storage.id
  description = "The ID of the terraform state store account"
}

output "tfstate_container_name" {
  value = azurerm_storage_container.tfstate_container.id
  description = "The ID of the terraform state store account container"
}