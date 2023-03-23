#output "remote_networks_before" {
#  value = data.sase_remote_networks_list.before
#}
#
#output "ipsec_tunnels_before" {
#  value = data.sase_ipsec_tunnels_list.before
#}
#
#output "ike_gateways_before" {
#  value = data.sase_ike_gateways_list.before
#}
#
#output "bandwidth_allocations" {
#  value = data.sase_bandwidth_allocations_list.this
#}

output "remote_network_deets" {
  value = module.remote_networks.remote_networks
}