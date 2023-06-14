terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.60.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "test-rg"
    storage_account_name = "karthikstorage1234"
    container_name       = "test-container"
    key                  = "terraform.tfstate"
  }
  required_version = "=1.4.0"
}
provider "azurerm" {
  # Configuration options
  features {}
}
