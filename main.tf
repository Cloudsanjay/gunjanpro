


data "azurerm_resource_group" "example" {
  name     = var.rg_name
}

resource "azurerm_virtual_network" "example" {
  name     = vnet1
  location =  data.azurerm_resource_group.example.location
  resource_group_name =  data.azurerm_resource_group.example.rg_name
  address_space = ["10.0.0.0/16"]
}
