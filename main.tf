data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "this" {
  name                = var.vnet_name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  address_space       = length(var.address_spaces) == 0 ? [var.address_space] : var.address_spaces
  dns_servers         = var.dns_servers
  tags                = var.tags
}

resource "azurerm_subnet" "this" {
  for_each = var.subnets

  resource_group_name                            = data.azurerm_resource_group.this.name
  virtual_network_name                           = azurerm_virtual_network.this.name

  name                                           = each.key # each.key is subnet name
  address_prefixes                               = each.value.address_prefixes
  enforce_private_link_endpoint_network_policies = lookup(each.value, "enforce_private_link_endpoint_network_policies", null) == null ? false : each.value.enforce_private_link_endpoint_network_policies
  service_endpoints                              = lookup(each.value, "service_endpoints", [])
}
