resource "dns_a_record_set" "a-record" {
  for_each  = var.dns_configuration
  zone      = "${each.value.domain}."
  name      = each.value.name
  addresses = [each.value.ip]
  ttl       = each.value.ttl
}

resource "dns_ptr_record" "ptr-record" {
  for_each = var.dns_configuration
  zone     = "${join(".", slice(reverse(split(".", each.value.ip)), 1, 4))}.in-addr.arpa."
  name     = element(split(".", each.value.ip), 3)
  ptr      = "${each.value.name}.${each.value.domain}."
  ttl      = each.value.ttl
}

resource "dns_cname_record" "cname-record" {
  for_each = var.create_cnames ? var.cname_configuration : {}
  zone     = "${each.value.domain}."
  name     = each.value.name
  cname    = "${each.value.cname}."
  ttl      = each.value.ttl
}
