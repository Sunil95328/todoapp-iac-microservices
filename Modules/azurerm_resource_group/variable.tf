variable "rg_var" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}