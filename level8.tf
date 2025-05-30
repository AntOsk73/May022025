locals {
  vm_names = ["webvm-1", "webvm-2", "webvm-3"]
}

resource "azurerm_virtual_network" "virtual_network1" {
  name                = "level8-virtual_network"
  location            = azurerm_resource_group.antoineoskyform.name.location
  resource_group_name = azurerm_resource_group.antoineoskyform.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet_may30th" {
  name                 = "antoine-subnet"
  resource_group_name  = azurerm_resource_group.antoineoskyform.name
  virtual_network_name = azurerm_virtual_network" "virtual_network1.name
  address_prefixes     = ["10.0.1.0/24"]
}
