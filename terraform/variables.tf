variable "resource_group_name" {
  description = "The name of the resource group in which the AKS cluster will be created"
  type        = string
  default     = "hamim-aks-network-rg"
}

variable "service_principal_client_id" {
  description = "value of the service principal client id"
  type        = string
}

variable "service_principal_secret" {
  description = "value of the service principal client id"
  type        = string
  sensitive   = true
}

variable "public_ip" {
  description = "The public IP address of the machine from which the terraform scripts are being run"
  type        = string
}
