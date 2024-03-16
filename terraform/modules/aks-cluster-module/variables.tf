# AKS Cluster configuration variables

variable "aks_cluster_name" {
  description = "The name of the AKS cluster to be created"
  type        = string
}

variable "cluster_location" {
  description = "The Azure location to deploy the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix to be used for the AKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "The Kubernetes version to be used in the AKS cluster"
  type        = string
}

variable "service_principal_client_id" {
  description = "The Client ID used by the AKS cluster service principal"
  type        = string
}

variable "service_principal_secret" {
  description = "The Client Secret used by the AKS cluster service principal"
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "The name of the resource group in which the AKS cluster will be created"
  type        = string
}
