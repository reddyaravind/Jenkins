provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "East US" # You can change this to your preferred region
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacct" # Must be globally unique
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier            = "Standard"
  account_replication_type = "LRS" # Locally Redundant Storage

  tags = {
    environment = "dev"
  }
}
