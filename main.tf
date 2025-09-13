terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Resource group
resource "azurerm_resource_group" "aks_rg" {
  name     = "aks-demo-rg"
  location = "Norway East"
}

# AKS cluster
resource "azurerm_kubernetes_cluster" "aks_demo" {
  name                = "aks-demo-cluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "aksdemocluster"

  default_node_pool {
    name       = "systempool"
    node_count = 1
    vm_size    = "Standard_D2as_v5"
  }

  identity {
    type = "SystemAssigned"
  }
}
