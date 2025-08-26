data "azurerm_resource_group" "example" {
  name     = "rg1"
}

resource "azurerm_virtual_network" "example" {
  name     = "vnet1"
  location = "West Europe"
  resource_group_name = "rg1"
  address_space = ["10.0.0.0/16"]
}
