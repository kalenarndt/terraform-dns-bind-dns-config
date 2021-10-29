provider "dns" {
  update {
    server        = var.dns_server
    key_name      = var.key_name
    key_algorithm = var.key_algorithm
    key_secret    = var.key_secret
  }
}
