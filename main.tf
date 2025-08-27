variable "rg_name" {
type = string
default = rg1
}

variable "location" {
type = string
default = eastus
}

variable "vnet" {
type = string
default = vnet1
}


data "azurerm_resource_group" "example" {
  name     = var.rg_name
}

resource "azurerm_virtual_network" "example" {
  name     = var.vnet
  location = var.location
  resource_group_name = var.rg_name
  address_space = ["10.0.0.0/16"]
}
