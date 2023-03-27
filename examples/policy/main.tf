#module "security_policy" {
#  source         = "../../modules/policy"
#  security_rules = var.security_rules
#  services       = var.services
#  service_groups = var.service_groups
#  addresses      = var.addresses
#  #  address_groups = var.address_groups # Bug exists in provider for "folder is required"
#  tags      = var.tags
#  schedules = var.schedules # Currently assigning a schedule to a rule is not supported
#}

module "security_policy_with_yaml" {
  source         = "../../modules/policy"
  security_rules = yamldecode(file("${path.module}/data/config.yaml"))["security_rules"]
  services       = yamldecode(file("${path.module}/data/config.yaml"))["services"]
  service_groups = yamldecode(file("${path.module}/data/config.yaml"))["service_groups"]
  addresses      = yamldecode(file("${path.module}/data/config.yaml"))["addresses"]
  #  address_groups = yamldecode(file("${path.module}/data/config.yaml"))["address_groups"]
  tags      = yamldecode(file("${path.module}/data/config.yaml"))["tags"]
  schedules = yamldecode(file("${path.module}/data/config.yaml"))["schedules"]
}

#module "security_policy_with_json" {
#  source         = "../../modules/policy"
#  security_rules = jsondecode(file("${path.module}/data/config.json"))["security_rules"]
#  services       = jsondecode(file("${path.module}/data/config.json"))["services"]
#  service_groups = jsondecode(file("${path.module}/data/config.json"))["service_groups"]
#  addresses      = jsondecode(file("${path.module}/data/config.json"))["addresses"]
#  # address_groups = jsondecode(file("${path.module}/data/config.json"))["address_groups"]
#  tags      = jsondecode(file("${path.module}/data/config.json"))["tags"]
#  schedules = jsondecode(file("${path.module}/data/config.json"))["schedules"]
#}
