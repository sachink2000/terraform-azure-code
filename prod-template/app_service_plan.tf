resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = var.kind
  reserved            = var.kind == "Linux" ? true : false

  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}