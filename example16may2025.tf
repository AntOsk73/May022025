variable "service_name" {
  default = "antoine"
}

variable "environments" {
  default = ["dev", "qa", "stage", "prod"]
}

locals {
  full_service_names = {
    for env in var.environments :
    env => "${env}${var.service_name}"
  }
}

resource "azurerm_storage_account" "antoinestoremay2025" {
  for_each = local.full_service_names


  name                     = each.value
  resource_group_name      = "antoineresources"
  location                 = "East US"
  account_tier              = "Standard"
  account_replication_type = "LRS"
}
output "antoine16may2025"{
  value=local.full_service_names
}

variable "service_storage" {
 default   = {
    "dev"    = "antoinedev"
    "qa"     = "antoineqa"
    "stage"  = "antoinesage"
    "prod"   = "antoineprod"
 }
}

resource "azurerm_storage_account" "aosky_storageaccount" {
  for_each = var.service_storage

  name                     = each.value
  resource_group_name      = "my-instance-group"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
  


