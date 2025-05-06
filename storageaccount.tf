resource "azurerm_storage_account" "mcitstorage" {
  name                     = var.antoinestorageaccount
  resource_group_name      = azurerm_resource_group.antoineoskyform.name
  location                 = azurerm_resource_group.antoineoskyform.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = var.environment
}
}

resource "azurerm_storage_container" "antoinecontainer" {
  name                  = "content"
  storage_account_id    = azurerm_storage_account.antoinecontainer.id
  container_access_type = "private"
}

resource "azurerm_storage_blob" "antoinecontainer" {
  name                   = "my-awesome-content.zip"
  storage_account_name   = azurerm_storage_account.antoinecontainer.name
  storage_container_name = azurerm_storage_container.antoinecontainer.name
  type                   = "Block"
  source                 = "some-local-file.zip"
}
