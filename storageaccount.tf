resource "azurerm_storage_account" "mcitstorage" {
  name                     = var.antoinestorageaccount
  resource_group_name      = azurerm_resource_group.antoineoskyform.name
  location                 = azurerm_resource_group.antoineoskyform.location
  account_tier             = var."account_tier"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
  }
}
