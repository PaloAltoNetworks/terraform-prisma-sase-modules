#data "sase_shared_infrastructure_settings_list" "this" {
#}
#
#output "sase_shared_infrastructure_settings_list" {
#  value = data.sase_shared_infrastructure_settings_list.this
#}

############################################################################################################
# This example is a framing, but is not functional yet.
# The data source fixes are not yet in place for missing objects.
############################################################################################################


data "sase_security_rules_list" "this" {
  folder   = "Shared"
  position = "pre"
}

output "sase_security_rules_list" {
  value = data.sase_security_rules_list.this
}