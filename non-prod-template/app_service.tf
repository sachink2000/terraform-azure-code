resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id
  https_only          = true

  site_config {
    linux_fx_version = "PHP|8.1"
    always_on        = true
  }
}

resource "azurerm_app_service_slot" "app_service_slot" {
  count               = length(var.deployment_slots)
  name                = var.deployment_slots[count.index]
  app_service_name    = azurerm_app_service.app_service.name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id
  https_only          = true

  site_config {
    linux_fx_version = "PHP|8.1"
    always_on        = true
  }
}