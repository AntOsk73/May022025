provider "azurerm"{
  features{}
  subscription_id=var.subscription+id
  client_id=var.client_id
  client_secret=var.client_secret
  tenant_id=var.tenant_id
}
terraform{
  required_providers{
    azurerm={
      source="hashicorp/azurerm"
      version=">3.70.0"#this version is for azurerm, NOT terraform version
       }
     }
     required_version=">1.4.0"this version is for Terraform version, NOT azurerm
     }

  
