variable "key_secret" {
  type        = string
  description = "(Requried) Key secret used to authenticate with the DNS server"
}

variable "key_name" {
  type        = string
  description = "(Requried) Name of the key that will be used for authentication with the DNS server"
}

variable "key_algorithm" {
  type        = string
  default     = "hmac-sha256"
  description = "(Optional) Algorithm of the key that will be used for authentication with the DNS server"
}

variable "dns_server" {
  type        = string
  description = "(Required) IP or FQDN of the DNS server"
}