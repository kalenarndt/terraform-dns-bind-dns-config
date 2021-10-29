locals {
  dns_config  = yamldecode(file("${path.module}/dns.yaml"))
  dns_entries = local.dns_config.bind
}

module "homelab_dns" {
  source = "kalenarndt/bind-dns-config/dns"

  dns_configuration   = local.dns_entries
  cname_configuration = local.dns_config.cname
  create_cnames       = true
}