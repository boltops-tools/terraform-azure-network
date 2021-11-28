module "vnet" {
  source = "../../modules/network"

  resource_group_name = var.resource_group_name
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  tags                = var.tags

  subnets             = var.subnets
}
