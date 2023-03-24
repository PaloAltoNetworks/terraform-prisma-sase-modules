#module "security_policy" {
#  source         = "../../modules/policy"
#  security_rules = var.security_rules
#  services       = var.services
#  service_groups = var.service_groups
#}

module "security_policy_with_yaml" {
  source         = "../../modules/policy"
  security_rules = yamldecode(file("${path.module}/data/config.yaml"))["security_rules"]
  services       = yamldecode(file("${path.module}/data/config.yaml"))["services"]
  service_groups = yamldecode(file("${path.module}/data/config.yaml"))["service_groups"]
}

#module "security_policy_with_json" {
#    source         = "../../modules/policy"
#    security_rules = jsondecode(file("${path.module}/data/config.json"))["security_rules"]
#    services       = jsondecode(file("${path.module}/data/config.json"))["services"]
#    service_groups = jsondecode(file("${path.module}/data/config.json"))["service_groups"]
#}
