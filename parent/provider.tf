terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-mano"
    storage_account_name = "stgtfstatemano1"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "90ba3f99-29ea-4a71-8106-8a6775ca9f61"
}
