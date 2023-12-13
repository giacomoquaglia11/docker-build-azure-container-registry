locals {
  admin_username = "quagliagiacomo"
  admin_password = "QuagliaGiacomo01"
}
resource "azurerm_container_registry" "acr" {
  name = "myregistryquaglia00"
  resource_group_name = var.resource_group_name
  location = var.region
  sku = "Basic"
  admin_enabled = false
}
output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}