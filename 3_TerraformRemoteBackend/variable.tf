variable "resource_config" {
    description = "values for RG and storageAC"
    type = object({
      resource_group_name = string
      st_name = string
      location = string
      containername = string
    })
  
}

#using maps

variable "tag" {
    type = map(string)
  
}