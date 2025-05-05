resource "azurerm_storage_account" "antoskstoragemay" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.antoineoskyform.name
  location                 = azurerm_resource_group.antoineoskyform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}
