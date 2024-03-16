variable "resource_group_name" {
  description = "The name of the Azure Resource Group where networking resources will be deployed"
  type        = string
}

variable "location" {
  description = "The Azure region where networking resources will be deployed"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the Virtual Network (VNet)"
  type        = list(string)
}

variable "public_ip" {
  description = "Personal public ip"
  type        = string
}
