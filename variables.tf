variable "dns_configuration" {
  type = map(object({
    domain = string
    ip     = string
    name   = string
    ttl    = number
  }))
  description = "(Required) Map containing the configuration for your DNS entries"
}

variable "cname_configuration" {
  type = map(object({
    domain = string
    name   = string
    cname  = string
    ttl    = number
  }))
  description = "(Optional) Map containing the configuration for the CNAME entries"
  default     = null
}

variable "create_cnames" {
  type        = bool
  description = "(Optional) Map containing the configuration for the CNAME entries"
  default     = false
}
