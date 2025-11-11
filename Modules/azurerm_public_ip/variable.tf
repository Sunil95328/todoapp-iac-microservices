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