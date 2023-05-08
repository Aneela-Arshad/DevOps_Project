terraform {
  backend "azure" {}
}

provider "azurerm" {
  version  = "=2.20.0"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

data "azurerm_resource_group" "example" {
  name = azurerm_resource_group.example.name
}

output "id" {
  value = data.azurerm_resource_group.example.id
}
