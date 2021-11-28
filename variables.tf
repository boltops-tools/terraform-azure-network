variable "vnet_name" {
  description = "Name of the vnet to create."
  type        = string
  default     = "dev"
}

variable "resource_group_name" {
  description = "The name of an existing resource group to be imported."
  type        = string
}

variable "address_space" {
  description = "The address space that is used by the virtual network."
  type        = string
  default     = "10.0.0.0/16"
}

variable "address_spaces" {
  description = "The list of the address spaces that is used by the virtual network."
  type        = list(string)
  default     = []
}

# If no values specified, this defaults to Azure DNS
variable "dns_servers" {
  description = "The DNS servers to be used with vNet."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    environment = "dev"
  }
}

variable "subnets" {
  type = any
  # Example
  default = {
    "app" = {
      address_prefixes = ["10.0.0.0/24"]
      service_endpoints = ["Microsoft.Sql", "Microsoft.Storage"]
    }
    "db" = {
      address_prefixes = ["10.0.1.0/24"]
      enforce_private_link_endpoint_network_policies = false
    }
  }
}
