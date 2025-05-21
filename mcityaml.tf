locals{
  linux_app=[for f in fileset("${path.module}/mcityaml", "[^_]*.yaml") : yamldecode(file("${path.module}/configs/${f}"))]
  linux_app_list = flatten([
    for app in local.linux_app : [
      for linuxapps in try(app.windowsapplist, []) :{
          name=antoine.name
          os_type=antoine.os_type
          sku_name=antoine.sku_name   
      
      }
    ]
])

}


resource "azurerm_resource_group" "mcitdevrm" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_service_plan" "mcitdevrm" {
  name                = "example"
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_resource_group.mcitdevrm.location
  sku_name            = "P1v2"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "example" {
  name                = "example"
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_service_plan.mcitdevrm.location
  service_plan_id     = azurerm_service_plan.mcitdevrm.id

  site_config {}
}

  site_config {}
}
