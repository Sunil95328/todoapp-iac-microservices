# module "module_rg" {
#   source = "../../Modules/azurerm_resource_group"
#   rg_var = var.rg_var

# }

# module "module_pip" {
#   depends_on = [module.module_rg]
#   source     = "../../Modules/azurerm_public_ip"
#   pip        = var.pip

# }

# module "module_sql_server" {
#   depends_on = [module.module_rg]
#   source     = "../../Modules/azurerm_sql_server"
#   sql_server = var.sql_server

# }

# module "module_sql_db" {
#   depends_on = [module.module_rg]
#   source     = "../../Modules/azurerm_sql_database"
#   sql_db     = var.sql_db
#   server_ids  = module.module_sql_server.output_sql_srver

# }

# module "module_aks" {
#   depends_on = [module.module_rg]
#   source     = "../../Modules/azurerm_kubernetes_cluster"
#   aks_var    = var.aks_var

# }

# module "module_acr" {
#   depends_on = [module.module_rg]
#   source     = "../../Modules/azurerm_container_registry"
#   acr_var    = var.acr_var

# }

# module "module_key_vault" {
#   depends_on = [module.module_rg]
#   source     = "../../Modules/azurerm_key_vault"
#   key_vault  = var.key_vault

# }
