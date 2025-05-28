locals {
  region       = "eastus"
  is_primary   = local.region == "eastus" ? true : false
  environment  = local.is_primary ? "production" : "staging"
}
 
output "region" {
  value = local.region
}
 
output "is_primary_region" {
  value = local.is_primary
}
 
output "environment" {
  value = local.environment
}
it should do the following:
 region is set to "eastus"
is_primary checks if the region is "eastus" → sets true or false
environment uses if-else: if it's primary, it's "production", else "staging"
