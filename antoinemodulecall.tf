module "antoinestorage" {
  source              = "./modules/storage_account"
  name                = "antoineokystorageaccount"
  resource_group_name = azurerm_resource_group.antoineoskyform.name
  location            = azurerm_resource_group.antoineoskyform.location
  account_tier        = "Standard"
  account_replication_type = "LRS"
  kind                = "StorageV2"
  access_tier         = "Hot"
  tags = {
    environment = "dev"
    team        = "infra"
  }
}
