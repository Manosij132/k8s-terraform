resource "azurerm_container_registry" "acr" {
  name                = var.acr-name
  resource_group_name = var.rg-name
  location            = var.location
  sku                 = var.sku
}


