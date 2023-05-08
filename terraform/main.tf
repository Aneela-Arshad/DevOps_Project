terraform {
 bacckend "azure" {}
}
provider "azurerm" {
 # whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used 
 version  = "=2.4.0"
 features {}
}
resource "azurerm_resource_group" "example" {
 name     = "example-resources"
 location = "East US"
}
rifhsg
gfd
g
d
g
fdh
fg
hf
