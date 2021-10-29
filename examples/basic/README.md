<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_homelab_dns"></a> [homelab\_dns](#module\_homelab\_dns) | kalenarndt/bind-dns-config/dns | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_server"></a> [dns\_server](#input\_dns\_server) | (Required) IP or FQDN of the DNS server | `string` | n/a | yes |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | (Optional) Algorithm of the key that will be used for authentication with the DNS server | `string` | `"hmac-sha256"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | (Requried) Name of the key that will be used for authentication with the DNS server | `string` | n/a | yes |
| <a name="input_key_secret"></a> [key\_secret](#input\_key\_secret) | (Requried) Key secret used to authenticate with the DNS server | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->