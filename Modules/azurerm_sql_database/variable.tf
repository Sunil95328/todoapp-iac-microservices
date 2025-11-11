variable "sql_db" {
    type = map(object({
        sql_db_name   = string
        sql_server_name = string
        max_size_gb   = number
        sku_name      = string
        tags          = map(string)
    }))
  
}

variable "server_ids" {
  type = map(string)
}