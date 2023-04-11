output "security_profiles" {
  # Map of all security profiles
  value = {
    anti_spyware_profiles  = try(sase_anti_spyware_profiles.this, {})
    file_blocking_profiles = try(sase_file_blocking_profiles.this, {})
    dns_security_profiles  = try(sase_dns_security_profiles.this, {})
    #url_filtering_profiles        = try(sase_url_filtering_profiles.this, {})
    vulnerability_protection_profiles = try(sase_vulnerability_protection_profiles.this, {})
    wildfire_anti_virus_profiles      = try(sase_wildfire_anti_virus_profiles.this, {})
  }
}

output "profile_groups" {
  # Map of all profile groups
  value = try(sase_profile_groups.this, {})
}