resource "azurerm_resource_group" "rgdetails" {
  name = var.names.rgname
  location = var.names.location
  
}

resource "azurerm_virtual_network" "vnetdetails" {
  name                = var.names.vnetname
  location            = azurerm_resource_group.rgdetails.location
  resource_group_name = azurerm_resource_group.rgdetails.name
  address_space       = var.names.addressprefix
  
}

resource "azurerm_subnet" "subnetdetails1" {
    name                 = var.names.subnet1
  resource_group_name  = azurerm_resource_group.rgdetails.name
  virtual_network_name = azurerm_virtual_network.vnetdetails.name
  address_prefixes     = ["10.0.1.0/24"]

}

resource "azurerm_subnet" "subnetdetails2" {
    name                 = var.names.subnet2
  resource_group_name  = azurerm_resource_group.rgdetails.name
  virtual_network_name = azurerm_virtual_network.vnetdetails.name
  address_prefixes     = ["10.0.2.0/24"]

}


resource "azurerm_network_security_group" "nsgdetails" {
    name                = "acceptanceTestSecurityGroup1"
  location            = azurerm_resource_group.rgdetails.location
  resource_group_name = azurerm_resource_group.rgdetails.name

  security_rule {
    name                       = "allow-ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

#associate NSG with Subnet

resource "azurerm_subnet_network_security_group_association" "nsgsubnetmeet1" {
  subnet_id                 = azurerm_subnet.subnetdetails1.id
  network_security_group_id = azurerm_network_security_group.nsgdetails.id

  
}

resource "azurerm_subnet_network_security_group_association" "nsgsubnetmeet2" {
  subnet_id                 = azurerm_subnet.subnetdetails2.id
  network_security_group_id = azurerm_network_security_group.nsgdetails.id

  
}