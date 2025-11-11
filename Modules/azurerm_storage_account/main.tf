resource "azurerm_storage_account" "main_stg" {

    for_each = var.stg_accounts
  name                     = each.value.stg_name    
    resource_group_name      = each.value.rg_name

    location                 = each.value.location
    account_tier             = each.value.account_tier
    account_replication_type = each.value.account_replication_type
    tags = each.value.tags
}