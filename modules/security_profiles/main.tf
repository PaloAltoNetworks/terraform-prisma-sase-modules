resource "sase_anti_spyware_profiles" "this" {
  for_each    = try(var.anti_spyware_profiles, {})
  folder      = each.value.folder
  name        = each.key
  description = try(each.value.description, null)
  rules = [
    {
      name        = "test1"
      action      = { drop = true }
      category    = "backdoor"
      severity    = ["high"]
      threat_name = "test"
    }
  ]
  #  threat_exception = try(each.value.threat_exception, null)
}

resource "sase_file_blocking_profiles" "this" {
  for_each = try(var.file_blocking_profiles, {})
  folder   = each.value.folder
  name     = each.key
}

resource "sase_dns_security_profiles" "this" {
  for_each = try(var.dns_security_profiles, {})
  folder   = each.value.folder
  name     = each.key
}

#resource "sase_url_filtering_profiles" "this" {
#  for_each = try(var.url_filtering_profiles, {})
#  folder   = each.value.folder
#  name     = each.key
#}

resource "sase_vulnerability_protection_profiles" "this" {
  for_each         = try(var.vulnerability_protection_profiles, {})
  folder           = each.value.folder
  name             = each.key
  description      = try(each.value.description, [])
  threat_exception = try(each.value.threat_exception, null)
  rules            = try(each.value.rules, [])
}

resource "sase_wildfire_anti_virus_profiles" "this" {
  for_each = try(var.wildfire_anti_virus_profiles, {})
  folder   = each.value.folder
  name     = each.key
}

resource "sase_profile_groups" "this" {
  for_each      = try(var.profile_groups, {})
  folder        = each.value.folder
  name          = each.key
  saas_security = try(each.value.saas_security_profiles, null)
  spyware       = try(each.value.anti_spyware_profiles, null)
  file_blocking = try(each.value.file_blocking_profiles, null)
  dns_security  = try(each.value.dns_security_profiles, null)
  #url_filtering_profiles = each.value.url_filtering_profiles
  vulnerability               = try(each.value.vulnerability_protection_profiles, null)
  virus_and_wildfire_analysis = try(each.value.wildfire_anti_virus_profiles, null)
  depends_on = [
    sase_anti_spyware_profiles.this,
    sase_file_blocking_profiles.this,
    sase_dns_security_profiles.this,
    #sase_url_filtering_profiles.this,
    sase_vulnerability_protection_profiles.this,
    sase_wildfire_anti_virus_profiles.this
  ]
}