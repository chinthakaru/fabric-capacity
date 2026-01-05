terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "4.57.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-fabric-resources"
  location = "West Europe"
}

resource "azurerm_fabric_capacity" "capacities" {
  for_each = var.fabric_capacities

  name                   = each.value.name
  location               = each.value.location
  resource_group_name    = azurerm_resource_group.example.name
  administration_members = each.value.administration_members

  tags = merge( each.value.tags,var.common_tags)

  sku {
    name = each.value.sku_name
    tier = each.value.sku_tier
  }
}
