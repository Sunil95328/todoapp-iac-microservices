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
  #   client_id       = "6aa372f4-3288-4271-b002-48c74717e3ad"
  # tenant_id       = "76078fa6-40ac-4f47-af43-9db5e0ff6002"
  # subscription_id = "5c916523-d8df-42a5-9cb9-71dbddbac301"
  # use_cli         = false
}


