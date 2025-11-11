terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5c916523-d8df-42a5-9cb9-71dbddbac301"
}


