locals {
  rg_names = ["dev-rg", "test-rg", "prod-rg"]
}

resource "azurerm_resource_group" "rgs" {
  for_each = toset(local.rg_names)

  name     = each.value
  location = "East US" 
}
