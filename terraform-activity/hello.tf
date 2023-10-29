terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = "278980ef-cfef-4a86-b0e6-0bc9e1286a41"
  tenant_id = "199ee0d2-f16c-4bcc-8282-a04937c02e5d"

}