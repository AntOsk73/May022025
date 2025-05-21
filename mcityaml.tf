provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "mcitdevrm" {
  name     = "example-resources"
  location = "canada central"
}

resource "azurerm_service_plan" "mcitdevrm" {
  name                = "mcitdevrm"
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_resource_group.mcitdevrm.location
  sku_name            = "P1v2"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "mcitdevrm" {
  name                = "mcitdevrm"
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_service_plan.mcitdevrm.location
  service_plan_id     = azurerm_service_plan.mcitdevrm.id

  site_config {}
}
