rg_var = {
  rg1 = {
    rg_name  = "dev-rg1"
    location = "Central India"
  }
}

pip = {
  pip1 = {
    pip_name          = "dev-public-ip1"
    rg_name           = "dev-rg1"
    location          = "Central India"
    sku               = "Standard"
    allocation_method = "Static"
    tags = {
      environment = "Dev"
    }
  }
}

sql_server = {
  sql_server1 = {
    sql_server_name              = "dev-sql-server131"
    rg_name                      = "dev-rg1"
    location                     = "Central India"
    version                      = "12.0"
    administrator_login          = "sqladminuser"
    administrator_login_password = "P@ssword1234"
  }
}

sql_db = {
  sqldb1 = {
    sql_db_name     = "dev-sql-database1"
    sql_server_name = "dev-sql-server131"
    max_size_gb     = 10
    sku_name        = "S0"
    tags = {
      environment = "Dev"
    }
  }
}

aks_var = {
  aks1 = {
    aks_name   = "dev-aks-cluster1"
    rg_name    = "dev-rg1"
    location   = "Central India"
    dns_prefix = "devaks131"
    tags = {
      environment = "Dev"
    }
    default_node_pool = {
      default_pool1 = {
        name       = "default"
        node_count = 2
        vm_size    = "Standard_D2_v2"
      }
    }
    identity = {
      identity1 = {
        type = "SystemAssigned"
      }
    }
    network_profile = {
      network1 = {
        network_plugin = "azure"
        network_policy = "azure"
      }
    }
  }
}


acr_var = {
  acr1 = {
    acr_name      = "devcontainerreg131"
    rg_name       = "dev-rg1"
    location      = "Central India"
    sku           = "Basic"
    admin_enabled = true
    tags = {
      environment = "Dev"
    }
  }
}

key_vault = {
  kv1 = {
    key_vault_name              = "dev-keyvault-131"
    location                    = "Central India"
    rg_name                     = "dev-rg1"
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
    sku_name                    = "standard"
  }
}
