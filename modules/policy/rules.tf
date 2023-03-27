locals {
  source_list = try({
    for k, v in var.security_rules : k => concat(
      try(v.source_addresses, []),
      try(v.source_address_groups, []),
      try(v.source_regions, []),
      try(v.source_edls, [])
    )
  }, [])

  destination_list = try({
    for k, v in var.security_rules : k => concat(
      try(v.destination_addresses, []),
      try(v.destination_address_groups, []),
      try(v.destination_regions, []),
      try(v.destination_edls, [])
    )
  }, [])

  decryption_source_list = try({
    for k, v in var.decryption_rules : k => concat(
      try(v.decrypt_source_addresses, []),
      try(v.decrypt_source_address_groups, []),
      try(v.decrypt_source_regions, []),
      try(v.decrypt_source_edls, [])
    )
  }, [])

  decryption_destination_list = try({
    for k, v in var.decryption_rules : k => concat(
      try(v.decrypt_dest_addresses, []),
      try(v.decrypt_dest_address_groups, []),
      try(v.decrypt_dest_regions, []),
      try(v.decrypt_dest_edls, [])
    )
  }, [])

  app_source_list = try({
    for k, v in var.app_override_rules : k => concat(
      try(v.source_addresses, []),
      try(v.source_address_groups, []),
      try(v.source_regions, []),
      try(v.source_edls, [])
    )
  }, [])

  app_destination_list = try({
    for k, v in var.app_override_rules : k => concat(
      try(v.destination_addresses, []),
      try(v.destination_address_groups, []),
      try(v.destination_regions, []),
      try(v.destination_edls, [])
    )
  }, [])
}


resource "sase_security_rules" "this" {
  for_each    = try(var.security_rules, {})
  folder      = try(each.value.folder, null) # Fail if no folder
  action      = try(each.value.action, "deny")
  name        = each.key
  source      = length(local.source_list[each.key]) == 0 ? ["any"] : local.source_list[each.key]
  destination = length(local.destination_list[each.key]) == 0 ? ["any"] : local.destination_list[each.key]
  service = try(try(each.value.service_groups, null) != null ? each.value.service_groups :
  try(each.value.services, null) != null ? each.value.services : ["application-default"])
  application        = try(each.value.application, ["any"]) # Default to any application
  category           = try(each.value.category, ["any"])    # Default to any category
  position           = try(each.value.position, "pre")      # Default to pre rulebase
  source_user        = try(each.value.source_user, ["any"]) # Default to any user
  from               = try(each.value.from, ["trust"])      # Default to trust
  to                 = try(each.value.to, ["untrust"])      # Default to untrust
  description        = try(each.value.description, null)
  destination_hip    = try(each.value.destination_hip, null)
  source_hip         = try(each.value.source_hip, null)
  disabled           = try(each.value.disabled, null)
  log_setting        = try(each.value.log_setting, null)
  negate_source      = try(each.value.negate_source, false)
  negate_destination = try(each.value.negate_destination, false)
  profile_setting    = try(each.value.profile_setting, null)
  tag                = try(each.value.tags, null)
  depends_on = [
    sase_objects_service_groups.this,
    sase_objects_services.this,
    sase_objects_addresses.this,
    sase_objects_address_groups.this,
    sase_objects_external_dynamic_lists.this,
    sase_objects_tags.this,
    sase_objects_schedules.this
  ]
}

resource "sase_decryption_rules" "this" {
  for_each           = try(var.decryption_rules, {})
  name               = try(each.value.name, [])
  folder             = try(each.value.folder, null) # Fail if no folder
  source             = length(local.decryption_source_list[each.key]) == 0 ? ["any"] : local.decryption_source_list[each.key]
  destination        = length(local.decryption_destination_list[each.key]) == 0 ? ["any"] : local.decryption_destination_list[each.key]
  service            = try(each.value.service, [])
  category           = try(each.value.category, [])
  position           = try(each.value.position, [])
  source_user        = try(each.value.source_user, [])
  from               = try(each.value.from, ["trust"])
  action             = try(each.value.action, "decrypt")
  to                 = try(each.value.to, ["untrust"])
  description        = try(each.value.description, null)
  destination_hip    = try(each.value.destination_hip, null)
  disabled           = try(each.value.disabled, null)
  log_setting        = try(each.value.log_setting, null)
  negate_source      = try(each.value.negate_source, false)
  negate_destination = try(each.value.negate_destination, false)
  tag                = try(each.value.tags, null)
  type               = try(each.value.type, null)
  profile            = try(each.value.profile, null)
  source_hip         = try(each.value.source_hip, null)
  log_fail           = try(each.value.log_fail, null)
  log_success        = try(each.value.log_success, null)
  depends_on = [
    sase_objects_service_groups.this,
    sase_objects_services.this,
    sase_objects_addresses.this,
    sase_objects_address_groups.this,
    sase_objects_tags.this,
    sase_objects_external_dynamic_lists.this,
    sase_objects_schedules.this
  ]
}

resource "sase_app_override_rules" "this" {
  for_each           = try(var.app_override_rules, {})
  folder             = try(each.value.folder, null) # Required
  name               = each.key                     # Required
  position           = try(each.value.position, "pre")
  description        = try(each.value.description, null)
  application        = try(each.value.application, null) # Required
  destination        = length(local.app_destination_list[each.key]) == 0 ? ["any"] : local.app_destination_list[each.key]
  source             = length(local.app_source_list[each.key]) == 0 ? ["any"] : local.app_source_list[each.key] # Source Regions not supported
  port               = try(each.value.port, null)                                                               # Required
  protocol           = try(each.value.protocol, null)                                                           # Required
  to                 = try(each.value.to, ["untrust"])                                                          # Required
  from               = try(each.value.from, ["trust"])                                                          # Required
  disabled           = try(each.value.disabled, false)
  group_tag          = try(each.value.group_tag, null)
  negate_destination = try(each.value.negate_destination, false)
  negate_source      = try(each.value.negate_source, false)
  tag                = try(each.value.tags, null)
  depends_on = [
    sase_objects_tags.this,
    sase_objects_addresses.this,
    sase_objects_address_groups.this,
    sase_objects_external_dynamic_lists.this
  ]
}

resource "sase_qos_policy_rules" "this" {
  for_each    = try(var.qos_policy_rules, {})
  name        = each.key
  description = try(each.value.description, null)
  action      = try(each.value.action, null)
  position    = try(each.value.position, null)
  dscp_tos    = try(each.value.dscp_tos, null)
  schedule    = try(each.value.schedule, null)
}