data "azurerm_subscription" "primary" {
}


resource "azurerm_role_assignment" "example" {
  count                = length(var.users)
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = var.users[count.index]
}


output "subscription_primary_id" {
  value = data.azurerm_subscription.primary.id
}