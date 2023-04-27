## Security Profiles Module

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
| [sase_anti_spyware_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/anti_spyware_profiles) | resource |
| [sase_dns_security_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/dns_security_profiles) | resource |
| [sase_file_blocking_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/file_blocking_profiles) | resource |
| [sase_profile_groups.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/profile_groups) | resource |
| [sase_vulnerability_protection_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/vulnerability_protection_profiles) | resource |
| [sase_wildfire_anti_virus_profiles.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/wildfire_anti_virus_profiles) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_anti_spyware_profiles"></a> [anti\_spyware\_profiles](#input\_anti\_spyware\_profiles) | Anti Spyware Profiles | `map(any)` | `{}` | no |
| <a name="input_dns_security_profiles"></a> [dns\_security\_profiles](#input\_dns\_security\_profiles) | DNS Security Profiles | `map(any)` | `{}` | no |
| <a name="input_file_blocking_profiles"></a> [file\_blocking\_profiles](#input\_file\_blocking\_profiles) | File Blocking Profiles | `map(any)` | `{}` | no |
| <a name="input_profile_groups"></a> [profile\_groups](#input\_profile\_groups) | SASE Profile Groups | `map(any)` | `{}` | no |
| <a name="input_vulnerability_protection_profiles"></a> [vulnerability\_protection\_profiles](#input\_vulnerability\_protection\_profiles) | SASE Vulnerability Protection Profiles | `map(any)` | `{}` | no |
| <a name="input_wildfire_anti_virus_profiles"></a> [wildfire\_anti\_virus\_profiles](#input\_wildfire\_anti\_virus\_profiles) | SASE Wildfire Anti Virus Profiles | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_profile_groups"></a> [profile\_groups](#output\_profile\_groups) | n/a |
| <a name="output_security_profiles"></a> [security\_profiles](#output\_security\_profiles) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->