#module "profiles" {
#  source = "../../modules/security_profiles"
#  anti_spyware_profiles = {}
#  wildfire_anti_virus_profiles = {}
#  vulnerability_protection_profiles = var.vulnerability_protection_profiles
#  file_blocking_profiles = {}
#  dns_security_profiles = {}
#  profile_groups = var.profile_groups
#}

module "profiles_with_yaml" {
  source = "../../modules/security_profiles"
  anti_spyware_profiles = {}
  wildfire_anti_virus_profiles = {}
  vulnerability_protection_profiles = yamldecode(file("./data/config.yaml"))["vulnerability_protection_profiles"]
  file_blocking_profiles = {}
  dns_security_profiles = {}
  profile_groups = yamldecode(file("./data/config.yaml"))["profile_groups"]
}

#module "profiles_with_json" {
#    source = "../../modules/security_profiles"
#    anti_spyware_profiles = {}
#    wildfire_anti_virus_profiles = {}
#    vulnerability_protection_profiles = jsondecode(file("./data/config.json"))["vulnerability_protection_profiles"]
#    file_blocking_profiles = {}
#    dns_security_profiles = {}
#    profile_groups = jsondecode(file("./data/config.json"))["profile_groups"]
#}