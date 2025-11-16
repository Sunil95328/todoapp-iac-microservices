terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "rg-tfstate"
    storage_account_name  = "tfstateinfra123"
    container_name        = "tfstate"
    key                   = "todoapp-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}


