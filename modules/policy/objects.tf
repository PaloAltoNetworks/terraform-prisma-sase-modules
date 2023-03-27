resource "sase_objects_tags" "this" {
  for_each = try(var.tags, {})
  folder   = try(each.value.folder, null) # Fail if not set
  name     = each.key
  color    = try(each.value.color, null)
  comments = try(each.value.comments, null)
}

resource "sase_objects_services" "this" {
  for_each = try(var.services, {})
  folder   = try(each.value.folder, null) # Fail if not set
  tag      = try(each.value.tags, null)
  protocol = try(each.value.protocol, null)
  name     = each.key
  depends_on = [
    sase_objects_tags.this
  ]
}

resource "sase_objects_service_groups" "this" {
  for_each = try(var.service_groups, {})
  folder   = try(each.value.folder, null) # Fail if not set
  name     = each.key
  members  = try(each.value.members, null)
  tag      = try(each.value.tags, null)
  depends_on = [
    sase_objects_services.this,
    sase_objects_tags.this
  ]
}

resource "sase_objects_addresses" "this" {
  for_each    = try(var.addresses, {})
  folder      = try(each.value.folder, null) # Fail if not set
  name        = each.key
  description = try(each.value.description, null)
  ip_netmask  = try(each.value.ip_netmask, null)
  ip_range    = try(each.value.ip_range, null)
  ip_wildcard = try(each.value.ip_wildcard, null)
  fqdn        = try(each.value.fqdn, null)
  tag         = try(each.value.tag, null)
  depends_on = [
    sase_objects_tags.this
  ]
}

resource "sase_objects_address_groups" "this" {
  for_each      = try(var.address_groups, {})
  folder        = try(each.value.folder, null) # Fail if not set
  name          = each.key
  description   = try(each.value.description, null)
  dynamic_value = try(each.value.filter, null)
  static        = try(each.value.members, null)
  tag           = try(each.value.tags, null)
  depends_on = [
    sase_objects_addresses.this,
    sase_objects_tags.this
  ]
}

resource "sase_objects_schedules" "this" {
  for_each      = try(var.schedules, {})
  folder        = try(each.value.folder, null) # Fail if not set
  name          = each.key
  schedule_type = try(each.value.schedule_type, null) # fail if not set
  depends_on    = []
}