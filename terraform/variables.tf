variable "rg_location" {
  type        = string
  description = "Location of the resource group."
}

variable "rg_name" {
  type        = string
  description = "Name of the resource group."
}

variable "virtual_network_name" {
  type        = string
  description = "Name of the virtual network."
}

variable "subnet_name" {
  type        = string
  description = "Name of the virtual network."
}

variable "nsg_name" {
  type        = string
  description = "Name of the network security group."
}

variable "vm_public_ip" {
  type        = string
  description = "Name of the virtual network."
}

variable "nic_name" {
  type        = string
  description = "Name of the virtual network."
}

variable "vm_name" {
  type        = string
  description = "name of the vm."
}

variable "vm_disk_name" {
  type        = string
  description = "name of the vmdisk"
}

variable "admin_username" {
  type        = string
  description = "Admin username for VMs."
}

variable "admin_password" {
  type        = string
  description = "Admin password for VMs."
}

variable "tags" {
  type = map(string)
  default = {
    Pillar = "M Cloud"
    Role   = "Futures"
    Usage  = "Training / Certification related activities"
  }
  description = "Set of tags to apply to resources."
}