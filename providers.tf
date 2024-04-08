terraform {
  required_version = ">=1.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "murali-rg"
      storage_account_name = "tfmuralistorage"
      container_name       = "dev-state"
      key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}