# Example - Add a new capacity:
fabric_capacities = {
  "p1controltower5" = {
    name                   = "p1controltower5"
    location               = "australiasoutheast"
    administration_members = ["alz@contoso.com"]
    sku_name               = "F64"
    sku_tier               = "Fabric"
    tags = {
      Owner = "fabric_team"
    }
  }
  "new-capacity" = {
    name                   = "newcapacity"
    location               = "westeurope"
    administration_members = ["alz@contoso.com"]
    sku_name               = "F128"
    sku_tier               = "Fabric"
  }
  "new-capacity1" = {
    name                   = "newcapacity1"
    location               = "westeurope"
    administration_members = ["fabricadmin@contoso.com", "alz@contoso.com"]
    sku_name               = "F2"
    sku_tier               = "Fabric"
  }
}

common_tags = {
  owner       = "IT"
  environment = "production"
  cost_center = "12345"
}
