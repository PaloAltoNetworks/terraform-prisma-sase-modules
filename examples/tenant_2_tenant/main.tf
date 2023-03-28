module "get_tenant_config" {
  source = "../../modules/config"
  providers = {
    sase = sase.from_tenant
  }
}

