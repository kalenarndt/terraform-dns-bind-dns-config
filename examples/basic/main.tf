locals {
  dns_config    = yamldecode(file("${path.module}/dns.yaml"))
  dns_entries   = local.dns_config.bind
  cname_entries = local.dns_config.cname
}

module "homelab_dns" {
  source = "kalenarndt/bind-dns-config/dns"

  dns_configuration   = local.dns_entries
  cname_configuration = local.dns_config.cname
  create_cnames       = true
  key_algorithm       = "hmac-sha256"
  key_name            = "external-dns."
  key_secret          = "fbhdODaDDqrvv2iR3aNN8X9ut15IOGkEBjHgbamJUrw="
  dns_server          = "ns.bmrf.io"
}