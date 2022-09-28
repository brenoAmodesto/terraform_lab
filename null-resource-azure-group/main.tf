terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "brenoremotestate"
    container_name       = "remotestate"
    key                  = "azure-resource-group-nullresource/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
