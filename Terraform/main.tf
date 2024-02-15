provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "${var.project_name}-${var.environment}-rg"
  location = var.location
}
