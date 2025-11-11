resource "azurerm_mssql_database" "main_sql_db" {
    for_each = var.sql_db
  name         = each.value.sql_db_name
  server_id    = var.server_ids[each.value.sql_server_name]
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
  tags = each.value.tags
}