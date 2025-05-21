locals{
  linux_app=[for f in fileset("${path.module}/mcityaml", "[^_]*.yaml") : yamldecode(file("${path.module}/configs/${f}"))]
  linux_app_list = flatten([
    for app in local.linux_app : [
      for windowsapps in try(app.windowsapplist, []) :{
          name=windowsapps.name
          os_type=windowsapps.os_type
          sku_name=windowsapps.sku_name   
      
      }
    ]
])

}

resource "azurerm_service_plan" "batcha06sp" {
  for_each            ={for sp in local.windows_web_app_list: "${sp.name}"=>sp }
  name                = each.value.name
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_resource_group.mcitdevrm.location
  os_type             = each.value.os_type
  sku_name            = each.value.sku_name
}

resource "azurerm_windows_web_app" "batcha06webapp" {
  for_each            = azurerm_service_plan.batcha06sp
  name                = each.value.name
  resource_group_name = azurerm_resource_group.mcitdevrm.name
  location            = azurerm_resource_group.mcitdevrm.location
  service_plan_id     = each.value.id

  site_config {}
}
