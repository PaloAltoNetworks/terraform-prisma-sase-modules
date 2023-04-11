data "sase_anti_spyware_profiles_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_file_blocking_profiles_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_dns_security_profiles_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

#data "sase_url_filtering_profiles_list" "this" {
#  for_each = try(var.url_filtering_profiles, {})
#  folder   = each.value.folder
#  name     = each.key
#}

data "sase_vulnerability_protection_profiles_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_wildfire_anti_virus_profiles_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}

data "sase_profile_groups_list" "this" {
  for_each = local.folder_map
  folder   = each.key
}