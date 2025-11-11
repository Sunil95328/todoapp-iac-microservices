variable "rg_var" {
  type = map(object({
    rg_name  = string
    location = string
  }))

}

variable "pip" {
  type = map(object({
    pip_name          = string
    rg_name           = string
    location          = string
    sku               = string
    allocation_method = string
    tags              = map(string)
  }))

}

variable "sql_server" {
  type = map(object({
    sql_server_name              = string
    rg_name                      = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
  }))
}

variable "sql_db" {
  type = map(object({
    sql_db_name     = string
    sql_server_name = string
    max_size_gb     = number
    sku_name        = string
    tags            = map(string)
  }))

}

variable "aks_var" {
  type = map(object({
    aks_name   = string
    rg_name    = string
    location   = string
    dns_prefix = string
    tags       = map(string)
    default_node_pool = map(object({
      name       = string
      node_count = number
      vm_size    = string
    }))
    identity = optional(map(object({
      type = string
    })))
    network_profile = map(object({
      network_plugin = string
      network_policy = optional(string)
    }))
  }))
}




variable "acr_var" {
  type = map(object({
    acr_name      = string
    rg_name       = string
    location      = string
    sku           = string
    admin_enabled = bool
    tags = optional(map(string)
  ) }))

}

variable "key_vault" {
  description = "A map of Key Vaults to create"
  type = map(object({
    key_vault_name              = string
    location                    = string
    rg_name                     = string
    enabled_for_disk_encryption = bool
    soft_delete_retention_days  = number
    purge_protection_enabled    = bool
    sku_name                    = string
  }))

}