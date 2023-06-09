## Policy Module

This Terraform Module creates a Policy and Objects to be managed by Palo Alto Networks
Prisma SASE service.

## Example

```terraform
#
# main.tf
#

provider "sase" {
  client_id     = "sa@email.com"
  client_secret = "supersecret"
  scope         = "profile tsg_id:{tsg_id} email"
}

#WITH YAML

module "security_policy_with_yaml" {
  source         = "../../modules/policy"
  security_rules = yamldecode(file("${path.module}/data/config.yaml"))["security_rules"]
  services       = yamldecode(file("${path.module}/data/config.yaml"))["services"]
  service_groups = yamldecode(file("${path.module}/data/config.yaml"))["service_groups"]
  addresses      = yamldecode(file("${path.module}/data/config.yaml"))["addresses"]
  #  address_groups = yamldecode(file("${path.module}/data/config.yaml"))["address_groups"]
  tags                   = yamldecode(file("${path.module}/data/config.yaml"))["tags"]
  schedules              = yamldecode(file("${path.module}/data/config.yaml"))["schedules"]
  app_override_rules     = yamldecode(file("${path.module}/data/config.yaml"))["app_override_rules"]
  external_dynamic_lists = yamldecode(file("${path.module}/data/config.yaml"))["external_dynamic_lists"]
  qos_policy_rules       = yamldecode(file("${path.module}/data/config.yaml"))["qos_policy_rules"]
}

#WITH JSON

module "security_policy_with_json" {
  source         = "../../modules/policy"
  security_rules = jsondecode(file("${path.module}/data/config.json"))["security_rules"]
  services       = jsondecode(file("${path.module}/data/config.json"))["services"]
  service_groups = jsondecode(file("${path.module}/data/config.json"))["service_groups"]
  addresses      = jsondecode(file("${path.module}/data/config.json"))["addresses"]
  # address_groups = jsondecode(file("${path.module}/data/config.json"))["address_groups"]
  tags                   = jsondecode(file("${path.module}/data/config.json"))["tags"]
  schedules              = jsondecode(file("${path.module}/data/config.json"))["schedules"]
  app_override_rules     = jsondecode(file("${path.module}/data/config.json"))["app_override_rules"]
  external_dynamic_lists = jsondecode(file("${path.module}/data/config.json"))["external_dynamic_lists"]
  qos_policy_rules       = jsondecode(file("${path.module}/data/config.json"))["qos_policy_rules"]
}
```

## Instructions

1. Define a `main.tf` file that calls the module and provides any required and
optional variables.
2. Define a `variables.tf` file that declares the variables that will be
utilized.
3. (OPTIONAL) Define an `outputs.tf` file to capture and display the module
return values.
4. (OPTIONAL) Create the directory `data/`.
5. (OPTIONAL) Add `config.yaml` or `config.json` to the `data/` directory.
6. (OPTIONAL) Define a `terraform.tfvars` file containing the required
variables and associated values.
7. Initialize the providers and modules with the `terraform init` command.
8. Validate the plan using the `terraform plan` command.
9. Apply the plan using the `terraform apply` command. 

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
| [sase_app_override_rules.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/app_override_rules) | resource |
| [sase_decryption_exclusions.this](https://registry.terraform.io/providers/paloaltonetworks-local/sase/1.0.0/docs/resources/decryption_exclusions) | resource |
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
| <a name="input_decryption_exclusions"></a> [decryption\_exclusions](#input\_decryption\_exclusions) | A list of decryption exclusions to create | `any` | `{}` | no |
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
| <a name="output_objects"></a> [objects](#output\_objects) | Map of all Palo Alto Networks HIP Objects created by this module |
| <a name="output_policy"></a> [policy](#output\_policy) | Map of all Palo Alto Networks Policy Rules created by this module |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->