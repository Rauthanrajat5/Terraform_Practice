variable "names" {
  type = object({
    rgname        = string
    vnetname      = string
    subnet1       = string
    subnet2       = string
    location      = string
    addressprefix = list(string)
  })

}
