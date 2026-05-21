resource "azurerm_resource_group" "rg" {
    name     = var.resource_config.resource_group_name
    location = var.resource_config.location
    tags = var.tag

}



resource "azurerm_storage_account" "storage" {
  name                     = "${var.tag.environment}${var.resource_config.st_name}001"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tag

  
}

resource "azurerm_storage_account" "storage2" {
  name                     = "whatthehell5487"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tag

  
}

resource "azurerm_storage_container" "cont" {
  name                  = var.resource_config.containername
  storage_account_id    = azurerm_storage_account.storage.id
  container_access_type = "private"

  depends_on = [ azurerm_storage_account.storage ]

}