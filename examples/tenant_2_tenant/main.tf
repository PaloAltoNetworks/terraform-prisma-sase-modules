############################################################################################################
# This example is a framing, but is not functional yet.
# The data source fixes are not yet in place for missing objects.
############################################################################################################


module "get_tenant_config" {
  source = "../../modules/config"
  providers = {
    sase = sase.from_tenant
  }
}

