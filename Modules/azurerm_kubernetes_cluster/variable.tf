variable "aks_var" {
  type = map(object({
    aks_name          = string
    rg_name           = string
    location          = string
    dns_prefix        = string
    tags              = map(string)
    default_node_pool = map(object({
      name       = string
      node_count = number
      vm_size    = string
    }))
    identity = map(object({
      type = string
    }))
    network_profile = map(object({
      network_plugin = string
      network_policy = optional(string)
    }))
  }))
}
