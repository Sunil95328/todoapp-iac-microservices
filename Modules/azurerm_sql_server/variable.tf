variable "sql_server" {
  type = map(object({
    sql_server_name  = string
  rg_name         = string
  location                     = string
  version                      = string
  administrator_login          = string
  administrator_login_password = string
}))
}