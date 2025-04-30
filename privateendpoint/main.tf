    resource "azurerm_private_endpoint" "cosmos_pe" {
  name                = var.pename
  location            = var.location
  resource_group_name = var.rgname
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = var.peconnectionname
    private_connection_resource_id = var.cosmos_db_id
    subresource_names              = var.subresource_names
    is_manual_connection           = false
  }
}