# Override default values here if needed

# Example - Add a new capacity:
fabric_capacities = {
  "p1controltower5" = {
    name                   = "p1controltower5"
    location               = "australiasoutheast"
    administration_members = ["alz@MngEnvMCAP385772.onmicrosoft.com"]
    sku_name               = "F64"
    sku_tier               = "Fabric"
  }
  "new-capacity" = {
    name                   = "newcapacity"
    location               = "westeurope"
    administration_members = ["alz@MngEnvMCAP385772.onmicrosoft.com"]
    sku_name               = "F128"
    sku_tier               = "Fabric"
  }
  "new-capacity1" = {
    name                   = "newcapacity1"
    location               = "westeurope"
    administration_members = ["fabricadmin@MngEnvMCAP385772.onmicrosoft.com"]
    sku_name               = "F2"
    sku_tier               = "Fabric"
  }
}

common_tags = {
  owner       = "IT"
  environment = "production"
  cost_center = "12345"
}
