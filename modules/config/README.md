## Data Config Module

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
| [sase_anti_spyware_profiles_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/anti_spyware_profiles_list) | data source |
| [sase_app_override_rules_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/app_override_rules_list) | data source |
| [sase_decryption_profiles_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/decryption_profiles_list) | data source |
| [sase_decryption_rules_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/decryption_rules_list) | data source |
| [sase_dns_security_profiles_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/dns_security_profiles_list) | data source |
| [sase_file_blocking_profiles_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/file_blocking_profiles_list) | data source |
| [sase_objects_addresses_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_addresses_list) | data source |
| [sase_objects_application_groups_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_application_groups_list) | data source |
| [sase_objects_applications_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_applications_list) | data source |
| [sase_objects_external_dynamic_lists_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_external_dynamic_lists_list) | data source |
| [sase_objects_hip_objects_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_hip_objects_list) | data source |
| [sase_objects_hip_profiles_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_hip_profiles_list) | data source |
| [sase_objects_schedules_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_schedules_list) | data source |
| [sase_objects_service_groups_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_service_groups_list) | data source |
| [sase_objects_services_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_services_list) | data source |
| [sase_objects_tags_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/objects_tags_list) | data source |
| [sase_profile_groups_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/profile_groups_list) | data source |
| [sase_security_rules_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/security_rules_list) | data source |
| [sase_vulnerability_protection_profiles_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/vulnerability_protection_profiles_list) | data source |
| [sase_wildfire_anti_virus_profiles_list.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/data-sources/wildfire_anti_virus_profiles_list) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_from_tenant_id"></a> [from\_tenant\_id](#input\_from\_tenant\_id) | Tenant ID Your Moving From | `string` | `""` | no |
| <a name="input_policy_objects_folders"></a> [policy\_objects\_folders](#input\_policy\_objects\_folders) | n/a | `list` | <pre>[<br>  "Shared",<br>  "Remote Networks",<br>  "Mobile Users",<br>  "Mobile Users Explicit Proxy"<br>]</pre> | no |
| <a name="input_positions"></a> [positions](#input\_positions) | n/a | `list` | <pre>[<br>  "pre",<br>  "post"<br>]</pre> | no |
| <a name="input_to_tenant_id"></a> [to\_tenant\_id](#input\_to\_tenant\_id) | Tenant ID Your Moving To | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_addresses"></a> [addresses](#output\_addresses) | n/a |
| <a name="output_application_groups"></a> [application\_groups](#output\_application\_groups) | n/a |
| <a name="output_applications"></a> [applications](#output\_applications) | n/a |
| <a name="output_edls"></a> [edls](#output\_edls) | n/a |
| <a name="output_from_sec_policy"></a> [from\_sec\_policy](#output\_from\_sec\_policy) | n/a |
| <a name="output_schedules"></a> [schedules](#output\_schedules) | n/a |
| <a name="output_security_rules"></a> [security\_rules](#output\_security\_rules) | n/a |
| <a name="output_service_groups"></a> [service\_groups](#output\_service\_groups) | n/a |
| <a name="output_services"></a> [services](#output\_services) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->