#Here we only define the types like string, integer,boolean

#using object

variable "resource_config" {
    description = "Core resource configuration for storage and resource group"
    type = object({
      rg_name = string
      location = string
      St_name = string
      })
      }



#using map

variable "tags" {
    type = map(string)
/*default here means if we dont update any data for tags in terraform.tfvars it will take values from
here(default) means default is a fallback value and priority is given to tfvars*/

default = {
    environment = "dev"
    project     = "accenture-infra" 
    managed_by  = "terraform"
    company = "Fedpx"
    }
    }


#using list

variable "containerNames" {
    type = list(string)
  
}



