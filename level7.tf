locals {
  cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

resource "azurerm_virtual_network" "virtual_network" {
  name                = "level7-virtual_network"
  location            = "East US"
  resource_group_name = "example-rg"
  address_space       = ["10.0.0.0/16"]
}
