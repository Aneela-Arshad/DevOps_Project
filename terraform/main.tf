terraform {
  required_providers {
    azurerm = "=2.4.0"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
 name     = "example"
 location = "East US"
}

data "azurerm_resource_group" "example" {
  name = "example-resource-group"
}
output "id" {
  value = data.azurerm_resource_group.example.id
}



