rgs = {
  rg1 = {
    name     = "fe-rg"
    location = "Central India"
  }
}

virtual_network = {
  vnet1 = {
    name           = "fe-vnet"
    location       = "Central India"
    resource_group_name = "fe-rg"
    address_space  = ["10.0.0.0/16"]

    subnets = [{
      name             = "subnet1"
      address_prefixes = ["10.0.1.0/24"]
      }
      ,
      {
        name             = "subnet2"
        address_prefixes = ["10.0.2.0/24"]
    }
    ]
  }
}

vms = {
  vm1 = {
    nic_name = "prod-nic"
    location = "Central India"
    resource_group_name = "fe-rg"
    virtual_network_name  = "fe-vnet"
    size = "Standard_D2s_v3"
    subnet_name = "subnet1"
    vm_name = "prod-vm"
    admin_username = "adminuser"
    admin_password = "Devops@12345"
    source_image_reference = {
          publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    },

  }

    vm2 = {
    nic_name = "Dev-nic"
    location = "Central India"
    resource_group_name = "fe-rg"
    virtual_network_name  = "fe-vnet"
    size = "Standard_D2s_v3"
    subnet_name = "subnet2"
    vm_name = "Dev-vm"
    admin_username = "adminuser"
    admin_password = "Devops@12345"
    source_image_reference = {
          publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    }
}
}

keyvault = {

 key-dev1 = {
    location                  = "Central India"
    resource_group_name        = "fe-rg"
    soft_delete_retention_days = 7
    purge_protection_enabled   = false
    sku_name                   = "standard"
  }

}

# keyvault_secrets = {
#   admin_username = {
#     key_vault_name = "key-dev1"
#     secret_name    = "vmusername"
#   }

#   admin_password = {
#     key_vault_name = "key-dev1"
#     secret_name    = "vmpassword"
#   }
# }
