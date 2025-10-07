resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks-name
  location            = var.location
  resource_group_name = var.rg-name
  dns_prefix          = var.dns-prefix

  default_node_pool {
    name       = var.pool-name
    node_count = var.node-count
    vm_size    = var.vm-size
  }

  identity {
    type = "SystemAssigned"
  }

}

