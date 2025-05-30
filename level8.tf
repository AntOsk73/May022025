locals {
  vm_names = ["webvm-1", "webvm-2", "webvm-3"]
}

resource "azurerm_virtual_network" "virtual_network1" {
  name                = "level8-virtual_network"
  location            = azurerm_resource_group.antoineoskyform.name.location
  resource_group_name = azurerm_resource_group.antoineoskyform.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet_may30th" {
  name                 = "antoine-subnet"
  resource_group_name  = azurerm_resource_group.antoineoskyform.name
  virtual_network_name = azurerm_virtual_network" "virtual_network1.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "nic" {
  for_each = { for sp, name in local.vm_names : sp => name }

  name                = "nic-${each.value}"
  location            = azurerm_resource_group.antoineoskyform.location
  resource_group_name = azurerm_resource_group.antoineoskyform.name

  ip_configuration {
    name                          = "ipconfig-${each.value}"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm_antoine" {
  for_each = azurerm_network_interface.nic

  name                = each.value.name
  resource_group_name = azurerm_resource_group.antoineoskyform.name
  location            = azurerm_resource_group.antoineoskyform.location
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password      = "P@ssw0rd123!"

  network_interface_ids = [each.value.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}
