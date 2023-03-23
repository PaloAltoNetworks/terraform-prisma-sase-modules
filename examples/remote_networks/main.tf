module "remote_networks" {
  source = "../../modules/remote_networks"
  ike_crypto_profiles = {}
  ipsec_crypto_profiles = {}
  remote_networks = var.remote_networks
  ike_gateways = {}
  ipsec_tunnels = {}
  spns = local.spns
}