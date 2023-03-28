

#{ for folder, data in module.get_tenant_config.addresses : folder => { for address in data: address.name => address} }
#tomap({ for address in module.get_tenant_config.addresses["Shared"]: address.name => address })