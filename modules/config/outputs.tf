#output "from_sec_policy" {
#  value = { for k, v in data.sase_security_rules_list.this : k => v.data }
#}

output "addresses" {
  value = { for k, v in data.sase_objects_addresses_list.this : k => v.data }
}

output "service_groups" {
  value = { for k, v in data.sase_objects_service_groups_list.this : k => v.data }
}

output "services" {
  value = { for k, v in data.sase_objects_services_list.this : k => v.data }
}

output "edls" {
  value = { for k, v in data.sase_objects_external_dynamic_lists_list.this : k => v.data }
}

output "schedules" {
  value = { for k, v in data.sase_objects_schedules_list.this : k => v.data }
}

output "application_groups" {
  value = { for k, v in data.sase_objects_application_groups_list.this : k => v.data }
}

output "applications" {
  value = { for k, v in data.sase_objects_applications_list.this : k => v.data }
}

#output "security_rules" {
#  value = data.sase_security_rules_list.this
##  value = { for k, v in data.sase_security_rules_list.this : k => v.data }
#}