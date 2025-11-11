variable "key_vault" {
  description = "A map of Key Vaults to create"
  type = map(object({
    key_vault_name               = string
    location                     = string
    rg_name                      = string
    enabled_for_disk_encryption  = bool
    soft_delete_retention_days   = number
    purge_protection_enabled     = bool
    sku_name                     = string
  }))
  
}