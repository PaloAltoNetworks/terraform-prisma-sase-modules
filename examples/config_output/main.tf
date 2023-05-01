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


module "config_output" {
  source = "../../modules/config"
}