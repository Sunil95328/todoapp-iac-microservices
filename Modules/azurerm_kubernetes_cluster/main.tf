

resource "azurerm_kubernetes_cluster" "main_aks" {
    for_each = var.aks_var
  name                = each.value.aks_name          # name of the kubernetes cluster #
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = each.value.dns_prefix
  tags = each.value.tags
  

  dynamic "default_node_pool" {
    for_each = each.value.default_node_pool
    content {
    name       = default_node_pool.value.name
    node_count = default_node_pool.value.node_count
       vm_size    = default_node_pool.value.vm_size
  }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content { 
    type          = try(identity.value.type, "SystemAssigned")
    identity_ids  = try(identity.value.identity_ids, [])
  }
  }

dynamic "network_profile" {
    for_each = each.value.network_profile
    content {
  network_plugin = network_profile.value.network_plugin       
  network_policy = network_profile.value.network_policy
  }          
}
  
}


