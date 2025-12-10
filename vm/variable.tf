variable "vms" {
    type = map(object({

      nic_name = string
      resource_group_name = string
      virtual_network_name = string
      location = string
      size = string
      admin_username = string
      subnet_name = string
      vm_name = string
      admin_password = string
      source_image_reference = map(string)
    }))
}