variable "service_name" {
  default = "mcit"
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

resource "azurerm_storage_account" "mcitstoremay2025" {
  for_each = local.full_service_names


  name                     = each.value
  resource_group_name      = "mcitresources"
  location                 = "East US"
  account_tier              = "Standard"
  account_replication_type = "LRS"
}
output "mcit16may2025"{
  value=local.full_service_names
}
