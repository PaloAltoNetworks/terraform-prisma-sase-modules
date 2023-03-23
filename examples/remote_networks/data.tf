
data "sase_remote_networks_list" "before" {
  folder = "Remote Networks"
}

data "sase_ipsec_tunnels_list" "before" {
  folder = "Remote Networks"
}

data "sase_ike_gateways_list" "before" {
  folder = "Remote Networks"
}

data "sase_bandwidth_allocations_list" "this" {
  # All Bandwidth Allocations Listed
}
