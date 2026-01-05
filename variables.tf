variable "fabric_capacities" {
  description = "Map of fabric capacities to create"
  type = map(object({
    name                   = string
    location               = string
    administration_members = optional(list(string), [])
    sku_name               = string
    sku_tier               = string
    tags                   = optional(map(string), {})
  }))
  default = {}
}



variable "common_tags" {
  description = "Tags to apply to all fabric capacities"
  type        = map(string)
  default = {
    owner = "IT"
  }
}
