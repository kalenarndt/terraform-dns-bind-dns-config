<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_dns"></a> [dns](#requirement\_dns) | >=3.2.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dns"></a> [dns](#provider\_dns) | 3.2.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [dns_a_record_set.a-record](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/a_record_set) | resource |
| [dns_cname_record.cname-record](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/cname_record) | resource |
| [dns_ptr_record.ptr-record](https://registry.terraform.io/providers/hashicorp/dns/latest/docs/resources/ptr_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cname_configuration"></a> [cname\_configuration](#input\_cname\_configuration) | (Optional) Map containing the configuration for the CNAME entries | <pre>map(object({<br>    domain = string<br>    name   = string<br>    cname  = string<br>    ttl    = number<br>  }))</pre> | `null` | no |
| <a name="input_create_cnames"></a> [create\_cnames](#input\_create\_cnames) | (Optional) Map containing the configuration for the CNAME entries | `bool` | `false` | no |
| <a name="input_dns_configuration"></a> [dns\_configuration](#input\_dns\_configuration) | (Required) Map containing the configuration for your DNS entries | <pre>map(object({<br>    domain = string<br>    ip     = string<br>    name   = string<br>    ttl    = number<br>  }))</pre> | n/a | yes |
| <a name="input_dns_server"></a> [dns\_server](#input\_dns\_server) | (Required) IP or FQDN of the DNS server | `string` | n/a | yes |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | (Optional) Algorithm of the key that will be used for authentication with the DNS server | `string` | `"hmac-sha256"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | (Requried) Name of the key that will be used for authentication with the DNS server | `string` | n/a | yes |
| <a name="input_key_secret"></a> [key\_secret](#input\_key\_secret) | (Requried) Key secret used to authenticate with the DNS server | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->