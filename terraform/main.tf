terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0" # Replace with the specific version you need
    }
  }
}

provider "azurerm" {
  features {}
}

# Reference your networking module
module "network_module" {
  source = "./modules/networking-module" # Path to your network module

  resource_group_name = var.resource_group_name
  location            = "UK South"
  vnet_address_space  = ["10.0.0.0/16"]
  public_ip           = var.public_ip
}

module "aks_cluster" {
  source = "./modules/aks-cluster-module"

  resource_group_name         = var.resource_group_name
  aks_cluster_name            = "hamim-aks-cluster"
  cluster_location            = "UK South"
  dns_prefix                  = "myaks-project"
  kubernetes_version          = "1.26.10"
  service_principal_client_id = var.service_principal_client_id # export TF_VAR_service_principal_client_id="xxxxx"
  service_principal_secret    = var.service_principal_secret    # export TF_VAR_service_principal_secret="xxxxx"
}


