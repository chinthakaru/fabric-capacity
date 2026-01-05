# Example - Add a new capacity:
fabric_capacities = {
  "new-capacity1" = {
    name                   = "new-capacity1"
    location               = "australiasoutheast"
    administration_members = ["alz@contoso.com"]
    sku_name               = "F64"
    sku_tier               = "Fabric"
    tags = {
      Owner = "fabric_team"
    }
  }
  "new-capacity2" = {
    name                   = "new-capacity2"
    location               = "westeurope"
    administration_members = ["alz@contoso.com"]
    sku_name               = "F128"
    sku_tier               = "Fabric"
  }
  "new-capacity3" = {
    name                   = "new-capacity3"
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
