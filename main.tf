module "cosmos-DB" {
  source = "./cosmosdb"
  cosmosdb = var.cosmosdb
  rgname = var.rgname
  location = var.location
  kind = var.kind


}

module "private-endpoint" {
  source = "./privateendpoint"
  peconnectionname = var.peconnectionname
  pename = var.pename
  subnet_id = var.subnet_id
  subresource_names = var.subresource_names
  cosmos_db_id = module.cosmos-DB.cosmos_db_id

}
