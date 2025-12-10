module "rg" {
  source = "./rg"
  rgs = var.rgs
}

module "vnet" {
  source = "./vnet"
  depends_on = [ module.rg ]
  virtual_network = var.virtual_network
}

module "vm" {
  source = "./vm"
  depends_on = [ module.rg,module.vnet ]
  vms = var.vms
}