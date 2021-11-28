output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "The name of the newly created vNet"
  value       = azurerm_virtual_network.this.name
}

output "vnet_location" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.this.location
}

output "vnet_address_space" {
  description = "The address space of the newly created vNet"
  value       = azurerm_virtual_network.this.address_space
}

output "vnet_subnets" {
  description = "The ids of subnets created inside the newly created vNet"
  # value       = length(var.subnets) > 0 ? azurerm_subnet.subnet.*.id : null
  value = azurerm_subnet.this
}
