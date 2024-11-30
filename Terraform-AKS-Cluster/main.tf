provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo" {
  name     = "rg-aks-demo"
  location = "East US"
}

resource "azurerm_virtual_network" "demo" {
  name                = "vnet-aks-demo"
  address_space        = ["10.0.0.0/16"]
  location            = azurerm_resource_group.demo.location
  resource_group_name = azurerm_resource_group.demo.name
}

resource "azurerm_subnet" "demo" {
  name                 = "subnet-aks-demo"
  resource_group_name  = azurerm_resource_group.demo.name
  virtual_network_name = azurerm_virtual_network.demo.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_kubernetes_cluster" "demo" {
  name                = "aks-cluster-demo"
  location            = azurerm_resource_group.demo.location
  resource_group_name = azurerm_resource_group.demo.name
  dns_prefix          = "aks-demo"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
    vnet_subnet_id = azurerm_subnet.demo.id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "development"
  }
}

