output "objects" {
  # Map of all objects created by this module
  value = {
    tags = try(sase_objects_tags.this, {})
    services = try(sase_objects_services.this, {})
    service_groups = try(sase_objects_service_groups.this, {})
    addresses = try(sase_objects_addresses.this, {})
    address_groups = try(sase_objects_address_groups.this, {})
    schedules = try(sase_objects_schedules.this, {})
    external_dynamic_lists = try(sase_objects_external_dynamic_lists.this, {})
    qos_profiles = try(sase_qos_profiles.this, {})
  }
}

output "policy" {
  value = {
    security_rules = try(sase_security_rules.this, {})
    qos_policy_rules = try(sase_qos_policy_rules.this, {})
    app_override_rules = try(sase_app_override_rules.this, {})
    decryption_rules = try(sase_decryption_rules.this, {})
  }
}