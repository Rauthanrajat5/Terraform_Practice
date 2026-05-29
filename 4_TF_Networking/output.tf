output "nsg_id" {
    value = azurerm_network_security_group.nsgdetails.id
    
}

output "subnet_id_1" {
    value = azurerm_subnet.subnetdetails1.id
    
} 

output "subnet_id_2" {
    value = azurerm_subnet.subnetdetails2.id
    
}

  