variable "app_resource_group_name" {
  type        = string
  description = "Name of the application resource group"
}

variable "tfstate_resource_group_name" {
  type        = string
  description = "Name of the Terraform state resource group"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
  default     = "eastus"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default = {
    environment = "dev"
    managed_by  = "terraform"
  }
}

variable "tfstate_storage_account_name" {
  type        = string
  description = "Name of the Terraform state storage account"
}

variable "account_tier" {
  description = "Tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type of the storage account"
  type        = string
  default     = "LRS"
}

variable "shared_access_key_enabled" {
  description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key"
  type        = bool
  default     = true
}

variable "allow_nested_items_to_be_public" {
  description = "Allow or disallow nested items within this Account to opt into being public"
  type        = bool
  default     = false
}

variable "tfstate_container_name" {
  type        = string
  description = "Name of the Terraform state storage account container"
}

variable "container_access_type" {
  type        = string
  description = "Continer access type"
  default     = "private"
}