locals {
  folder_map = tomap({
    for folder in var.policy_objects_folders :
    folder => {}
  })
}


data "sase_objects_applications_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}


data "sase_objects_application_groups_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_addresses_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_address_groups_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_services_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_service_groups_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_schedules_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_external_dynamic_lists_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_tags_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_hip_objects_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_objects_hip_profiles_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_decryption_profiles_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}