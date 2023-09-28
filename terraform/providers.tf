terraform {
  required_version = "~>1.4"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.50"
    }
  }
  backend "azurerm" {
    resource_group_name  = "alan_ahmad-rg"
    storage_account_name = "alandevoteamstorage"
    container_name       = "tfstate"
    key                  = "petclinic.tfstate"
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}
