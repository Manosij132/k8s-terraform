module "resource_group" {
  source   = "../child/rg"
  rg-name  = var.rg-name
  location = var.location
}

module "aks" {
  source     = "../child/aks"
  aks-name   = var.aks-name
  location   = module.resource_group.rg_location
  rg-name    = module.resource_group.rg_name
  dns-prefix = var.dns-prefix
  pool-name  = var.pool-name
  node-count = var.node-count
  vm-size    = var.vm-size
}

module "acr" {
  source   = "../child/acr"
  acr-name = var.acr-name
  location = module.resource_group.rg_location
  rg-name  = module.resource_group.rg_name
  sku      = var.sku
}


