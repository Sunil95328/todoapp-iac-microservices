variable "stg_accounts" {
  description = "A map of storage account configurations"
  type = map(object({
    stg_name                 = string
    rg_name                  = string
    location                 = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  }))
  
}