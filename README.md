# Terraform Azure Network

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

Simple example with:

* [azurerm_virtual_network](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network)
* [azurerm_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet)


## Add to Terrafile

```ruby
mod "network", source: "boltops-tools/network/azure"
```

## Import Example

    terraspace bundle # installs to vendor/modules/network
    terraspace bundle example network network # imports to app/stacks/network

## Configure Tfvars

    terraspace seed network # creates starter app/stacks/network/tfvars/dev.tfvars

## Deploy

    terraspace up network

## Clean Up

    terraspace down network

## Terraspace Project Example

See:

* GitHub: [boltops-learn/terraspace-azure-network](https://github.com/boltops-learn/terraspace-azure-network)

## Video

[![Watch the video](https://uploads-learn.boltops.com/7p5wdi7y363gpt4zi9t6dpiwbn1f)](https://learn.boltops.com/courses/terraspace-azure/lessons/terraspace-azure-network)

Note: Premium video content requires a subscription.
