resource_config = {
  rg_name = "test-rg"
  location = "east US"
  vnet_name = "vnet1"
  vnet_prefix = "10.0.0.0/16"

}

subnet = {
  subnet1 = {
    subnet_name = "frontend"
    subnet_prefix = "10.0.1.0/24"
    
  }

  subnet2 = {
    subnet_name = "backend"    
    subnet_prefix = "10.0.2.0/24"
    
  }
}



tags = {
  "env" = "dev"
}
