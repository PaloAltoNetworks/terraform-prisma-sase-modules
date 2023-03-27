module "profiles_with_yaml" {
  source                            = "../../modules/security_profiles"
  anti_spyware_profiles             = {}
  wildfire_anti_virus_profiles      = {}
  vulnerability_protection_profiles = yamldecode(file("${path.module}/data/profiles.yaml"))["vulnerability_protection_profiles"]
  file_blocking_profiles            = yamldecode(file("${path.module}/data/profiles.yaml"))["file_blocking_profiles"]
  dns_security_profiles             = yamldecode(file("${path.module}/data/profiles.yaml"))["dns_security_profiles"]
  profile_groups                    = yamldecode(file("${path.module}/data/profiles.yaml"))["profile_groups"]
}

# With Prisma SASE only Profile Groups are supported in Policy

module "security_policy_with_yaml" {
  source         = "../../modules/policy"
  security_rules = yamldecode(file("${path.module}/data/rules_objects.yaml"))["security_rules"]
  services       = yamldecode(file("${path.module}/data/rules_objects.yaml"))["services"]
  service_groups = yamldecode(file("${path.module}/data/rules_objects.yaml"))["service_groups"]
  addresses      = yamldecode(file("${path.module}/data/rules_objects.yaml"))["addresses"]
  #  address_groups = yamldecode(file("${path.module}/data/config.yaml"))["address_groups"]
  tags      = yamldecode(file("${path.module}/data/rules_objects.yaml"))["tags"]
  schedules = yamldecode(file("${path.module}/data/rules_objects.yaml"))["schedules"]
  depends_on = [
  module.profiles_with_yaml]
}