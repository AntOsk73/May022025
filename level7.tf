locals {
  cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

resource "azurerm_resource_group" "antoinelevel7" {
  name     = "mcitlevel7-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "antoinegroupname" {
  name                = "antoinegroupname-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.antoinegroup.location
  resource_group_name = azurerm_resource_group.mcitlevel7.name
}

resource "azurerm_subnet" "antoinesubnet" {
  name                 = "antoinesubnet-subnet"
  resource_group_name  = azurerm_resource_group.mcitlevel7.name
  virtual_network_name = azurerm_virtual_network.antoinesubnet.name
  address_prefixes     = ["10.0.1.0/24"]

resource "azurerm_subnet" "antoinesubnet" {
  name                 = "antoinesubnet-subnet"
  resource_group_name  = azurerm_resource_group.mcitlevel7.name
  virtual_network_name = azurerm_virtual_network.antoinesubnet.name
  address_prefixes     = ["10.0.2.0/24"]

resource "azurerm_subnet" "antoinesubnet" {
  name                 = "antoinesubnet-subnet"
  resource_group_name  = azurerm_resource_group.mcitlevel7.name
  virtual_network_name = azurerm_virtual_network.antoinesubnet.name
  address_prefixes     = ["10.0.3.0/24"]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}
