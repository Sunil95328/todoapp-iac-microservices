output "output_sql_srver" {
  value = {
    for key, server in azurerm_mssql_server.main_sql_server : server.name => server.id
  }
}
