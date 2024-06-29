resource "azurerm_resource_group" "app_rg" {
  name     = var.app_resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_resource_group" "tfstate_rg" {
  name     = var.tfstate_resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "tfstate_storage" {
  name                            = var.tfstate_storage_account_name
  resource_group_name             = azurerm_resource_group.tfstate_rg.name
  location                        = azurerm_resource_group.tfstate_rg.location
  account_tier                    = var.account_tier
  account_replication_type        = var.account_replication_type
  shared_access_key_enabled       = var.shared_access_key_enabled
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  tags                            = var.tags
}

resource "azurerm_storage_container" "tfstate_container" {
  name                  = var.tfstate_container_name
  storage_account_name  = azurerm_storage_account.tfstate_storage.name
  container_access_type = var.container_access_type
}