resource "azurerm_resource_group" "rg" {
  name     = "Tf_RG_changed"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg1" {
  name     = "Tf_RG_changeddd"
  location = "West Europe"
}


#creating Storage account 

resource "azurerm_storage_account" "example" {
  name                     = "storagegt673t2vduef"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  
}