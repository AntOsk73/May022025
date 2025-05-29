locals {
  region      = "eastus"
  is_primary  = local.region == "eastus" ? true : false
  environment = local.is_primary ? "production" : "staging"
  subnet_data = yamldecode(file("${path.module}/may28/subnets.yaml"))

resource "azurerm_subnet" "subnets" {
  for_each    
