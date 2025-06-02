module "antoinefirewall" {
  source              = "./modules/firewall_policy"
  name                = "antoineokyfirewallpolicy"
  resource_group_name = azurerm_resource_group.antoineoskyform.name
  location            = azurerm_resource_group.antoineoskyform.location
  }
