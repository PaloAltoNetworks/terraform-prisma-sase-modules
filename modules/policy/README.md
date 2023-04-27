## Policy Module


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
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
| [sase_app_override_rules.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/app_override_rules) | resource |
| [sase_decryption_rules.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/decryption_rules) | resource |
| [sase_objects_address_groups.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/objects_address_groups) | resource |
| [sase_objects_addresses.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/objects_addresses) | resource |
| [sase_objects_external_dynamic_lists.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/objects_external_dynamic_lists) | resource |
| [sase_objects_schedules.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/objects_schedules) | resource |
| [sase_objects_service_groups.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/objects_service_groups) | resource |
| [sase_objects_services.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/objects_services) | resource |
| [sase_objects_tags.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/objects_tags) | resource |
| [sase_qos_policy_rules.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/qos_policy_rules) | resource |
| [sase_qos_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/qos_profiles) | resource |
| [sase_security_rules.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/security_rules) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_groups"></a> [address\_groups](#input\_address\_groups) | A map of address groups to create | `map(any)` | `{}` | no |
| <a name="input_addresses"></a> [addresses](#input\_addresses) | A map of addresses to create | `any` | `{}` | no |
| <a name="input_app_override_rules"></a> [app\_override\_rules](#input\_app\_override\_rules) | n/a | `any` | `{}` | no |
| <a name="input_decryption_rules"></a> [decryption\_rules](#input\_decryption\_rules) | A map of decryption rules to create | `map(any)` | `{}` | no |
| <a name="input_external_dynamic_lists"></a> [external\_dynamic\_lists](#input\_external\_dynamic\_lists) | A map of external dynamic lists to create | `any` | `{}` | no |
| <a name="input_qos_policy_rules"></a> [qos\_policy\_rules](#input\_qos\_policy\_rules) | n/a | `any` | `{}` | no |
| <a name="input_qos_profiles"></a> [qos\_profiles](#input\_qos\_profiles) | n/a | `any` | `{}` | no |
| <a name="input_schedules"></a> [schedules](#input\_schedules) | A map of schedules to create | `any` | `{}` | no |
| <a name="input_security_rules"></a> [security\_rules](#input\_security\_rules) | A map of security rules to create | `any` | `{}` | no |
| <a name="input_service_groups"></a> [service\_groups](#input\_service\_groups) | A map of service groups to create | `map(any)` | `{}` | no |
| <a name="input_services"></a> [services](#input\_services) | A map of services to create | `map(any)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to security rules | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_objects"></a> [objects](#output\_objects) | n/a |
| <a name="output_policy"></a> [policy](#output\_policy) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->