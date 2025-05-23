resource "azurerm_resource_group" "mynamegroup" {
  name     = "${local.myname}rm"
  location = "canadacentral"
}

resource "azurerm_service_plan" "myserviceplan" {
  name                = "${local.myname}sp"
  resource_group_name = azurerm_resource_group.mynamegroup.name
  location            = azurerm_resource_group.mynamegroup.location
  sku_name            = "P1v2"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "example" {
  name                = "${local.myname}wwa"
  resource_group_name = azurerm_resource_group.mynamegroup.name
  location            = azurerm_service_plan.mynamegroup.location
  service_plan_id     = azurerm_service_plan.myserviceplan.id

  site_config {}
}



