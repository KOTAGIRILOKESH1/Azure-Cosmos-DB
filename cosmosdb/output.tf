output "cosmos_db_id" {
  value = azurerm_cosmosdb_account.db.id
  depends_on = [ azurerm_cosmosdb_account.db ]
}