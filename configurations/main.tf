terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
    features {}

}

data "azurerm_resource_group" "rg_we_tf_intro" {
  name =  var.rg_we_tf_intro_name
}

resource "azurerm_storage_account" "sa_we_tf_intro" {
  name                     = var.sa_we_tf_intro_name
  resource_group_name      = data.azurerm_resource_group.rg_we_tf_intro.name
  location                 = data.azurerm_resource_group.rg_we_tf_intro.location
  account_tier             = var.sa_we_account_tier
  account_replication_type =  var.sa_we_tf_intro_account_replication_type

  tags = {
    environment = "dev"
  }
}