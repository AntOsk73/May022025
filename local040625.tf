resource "azurerm_storage_account" "antoinef0r_each" {
  for_each = var.storage_accounts

  name                     = each.key
  resource_group_name      = "antoineoskyform-rg"
  location                 = each.value
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
