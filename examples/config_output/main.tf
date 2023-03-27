#data "sase_shared_infrastructure_settings_list" "this" {
#}
#
#output "sase_shared_infrastructure_settings_list" {
#  value = data.sase_shared_infrastructure_settings_list.this
#}

data "sase_security_rules_list" "this" {
  folder   = "Shared"
  position = "pre"
}

output "sase_security_rules_list" {
  value = data.sase_security_rules_list.this
}