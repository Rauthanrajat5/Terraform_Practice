output "rg_name" {
  value = azurerm_resource_group.rg
}

output "st_name" {
  value = azurerm_storage_account.stac
   sensitive = true
}

output "container_name" {
  value = azurerm_storage_container.cont
}

output "storage_Id" {
    value = azurerm_storage_account.stac.id
  
}