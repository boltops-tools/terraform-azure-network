# Terraform Azure Network

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

Simple example with:

* [azurerm_virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network)
* [azurerm_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet)


## Add to Terrafile

```ruby
mod "network", source: "boltops-tools/terraform-azure-network/aws"
```

## Import Example

    terraspace bundle # installs to vendor/modules/network
    terraspace bundle example network # imports to app/stacks/network

## Configure Tfvars

    terraspace seed network # creates starter app/stacks/network/tfvars/dev.tfvars

## Deploy

    terraspace up network

## Clean Up

    terraspace down network

## Terraspace Project Example

See:

* GitHub: [boltops-learn/terraspace-azure-network](https://github.com/boltops-learn/terraspace-azure-network)