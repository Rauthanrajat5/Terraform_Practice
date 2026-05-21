provider "azurerm" {
  features {
    
  }
  
}

terraform {
  required_providers {
    azurerm ={
      source = "hashicorp/azurerm"
      version = "4.73.0"

    }
  }
}

terraform {
  backend "azurerm" {

    resource_group_name  = "stateRg"
    storage_account_name = "devmtnpay001"
    container_name       = "statefilestore"
    key                  = "terraform.tfstate"
  }
}
