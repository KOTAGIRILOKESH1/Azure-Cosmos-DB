data "azurerm_subnet" "existing" {
  name                 = "cosmos-subnet"
  virtual_network_name = "cosmos-db"
  resource_group_name  = "cosmos"
}
module "cosmos-DB" {
  source = "./cosmosdb"
  cosmosdb = var.cosmosdb
  rgname = var.rgname
  location = var.location
  kind = var.kind
}

module "private-endpoint" {
  source = "./privateendpoint"
  depends_on = [ module.cosmos-DB ]
  peconnectionname = var.peconnectionname
  pename = var.pename
  subnet_id = data.azurerm_subnet.existing.id
  subresource_names = var.subresource_names
  cosmos_db_id = module.cosmos-DB.cosmos_db_id

}
