resource "azurerm_resource_group" "rg" {
    name     = var.resource_config.rg_name
    location = var.resource_config.location
    tags = local.common_tags
  
}

resource "azurerm_storage_account" "stac" {
    name                     = "${var.tags.company}${var.tags.environment}001"
    resource_group_name      = azurerm_resource_group.rg.name
    location                 = azurerm_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = local.common_tags
    depends_on = [ azurerm_resource_group.rg ]
}

/*
as for_each only accepts map & sets so here we have list as variable for containernames
so list will be converted to sets. then only for_each works

*/

resource "azurerm_storage_container" "cont" {
    for_each = toset(var.containerNames) 

    name                  = each.value
    storage_account_id    = azurerm_storage_account.stac.id
    container_access_type = "private"
    depends_on = [ azurerm_storage_account.stac ]
}

