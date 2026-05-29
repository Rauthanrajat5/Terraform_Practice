variable "resource_config" {
    type = object({
      rg_name = string
      location = string
      vnet_name = string
      vnet_prefix = string

    })
  
}

variable "subnet" {
    type = map(object({
        subnet_name = string
        subnet_prefix = string
    }))
  
}

variable "tags" {
    type = map(string)
    
  
}