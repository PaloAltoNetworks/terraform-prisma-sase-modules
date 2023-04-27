## Remote Networks Module

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.9 |
| <a name="requirement_sase"></a> [sase](#requirement\_sase) | 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sase"></a> [sase](#provider\_sase) | 1.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sase_ike_crypto_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/ike_crypto_profiles) | resource |
| [sase_ipsec_crypto_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/ipsec_crypto_profiles) | resource |
| [sase_ipsec_tunnels.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/ipsec_tunnels) | resource |
| [sase_remote_networks.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/remote_networks) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ike_crypto_profiles"></a> [ike\_crypto\_profiles](#input\_ike\_crypto\_profiles) | Map of IKE Crypto Profiles to Generate | `map(any)` | `null` | no |
| <a name="input_ike_gateways"></a> [ike\_gateways](#input\_ike\_gateways) | Map of IKE Gateways to build | `map(any)` | `{}` | no |
| <a name="input_ipsec_crypto_profiles"></a> [ipsec\_crypto\_profiles](#input\_ipsec\_crypto\_profiles) | Map of IPSec Crypto Profiles to Generate | `map(any)` | `{}` | no |
| <a name="input_ipsec_tunnels"></a> [ipsec\_tunnels](#input\_ipsec\_tunnels) | Map of IPSEC Tunnels | `map(any)` | `{}` | no |
| <a name="input_remote_networks"></a> [remote\_networks](#input\_remote\_networks) | Map of Remote Networks to build | `map(any)` | `{}` | no |
| <a name="input_spns"></a> [spns](#input\_spns) | List of SPNs to reference with the allocated bandwidth | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ike_crypto_profiles"></a> [ike\_crypto\_profiles](#output\_ike\_crypto\_profiles) | n/a |
| <a name="output_ipsec_crypto_profiles"></a> [ipsec\_crypto\_profiles](#output\_ipsec\_crypto\_profiles) | n/a |
| <a name="output_remote_networks"></a> [remote\_networks](#output\_remote\_networks) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->