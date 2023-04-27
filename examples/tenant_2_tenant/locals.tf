locals {
  address_map = { for folder, data in module.get_tenant_config.addresses : folder => { for address in data : address.name => address } }
}