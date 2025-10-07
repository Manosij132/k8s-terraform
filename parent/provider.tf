terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-tfstate-mano"
    storage_account_name = "stgtfstatemano"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features{}
  subscription_id = "a042c51a-bb9d-48f6-af09-55adf40d7a98"
}