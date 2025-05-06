resource "azurerm_storage_account" "mcitstorage" {
  name                     = var.antoinestorageaccount
  resource_group_name      = azurerm_resource_group.antoineoskyform.name
  location                 = azurerm_resource_group.antoineoskyform.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_tier             = "premium"
  account_replication_type = "ZRS"

  tags = {
    environment = "dev"
  }
}
