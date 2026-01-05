variable "fabric_capacities" {
  description = "Map of fabric capacities to create"
  type = map(object({
    name                   = string
    location               = string
    administration_members = list(string)
    sku_name               = string
    sku_tier               = string
  }))
  default = {
    "p1controltower5" = {
      name                   = "p1controltower5"
      location               = "australiasoutheast"
      administration_members = ["alz@contoso.onmicrosoft.com"]
      sku_name               = "F64"
      sku_tier               = "Fabric"
    }
    "p1controltower1" = {
      name                   = "p1controltower1"
      location               = "austriaeast"
      administration_members = ["admin@contoso.onmicrosoft.com"]
      sku_name               = "F128"
      sku_tier               = "Fabric"
    }
    "p1controltower4" = {
      name                   = "p1controltower4"
      location               = "austriaeast"
      administration_members = ["fabricadmin@contoso.onmicrosoft.com"]
      sku_name               = "F2"
      sku_tier               = "Fabric"
    }
  }
}



variable "common_tags" {
  description = "Tags to apply to all fabric capacities"
  type        = map(string)
  default = {
    owner = "IT"
  }
}
