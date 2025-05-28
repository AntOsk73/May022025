locals {
  subnet_config = yamldecode(file("subnets.yaml")).subnets
}

resource "azurerm_virtual_network" "local_28thsubnets.tf" {
  name                = "my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"       #
  resource_group_name = "my-resource-group"
}

resource "azurerm_subnet" "dynamic_subnets" {
  for_each             = local.subnet_config
  name                 = each.key
  resource_group_name  = azurerm_virtual_network.main.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [each.value]
}
