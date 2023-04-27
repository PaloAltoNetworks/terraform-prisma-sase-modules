output "remote_networks" {
  value       = sase_remote_networks.this
  description = "The remote networks that are created and managed by the Palo ALto Networks SASE service"
}

output "ike_crypto_profiles" {
  value       = sase_ike_crypto_profiles.this
  description = "The IKE crypto profiles that are created and managed by the Palo ALto Networks SASE service"
}

output "ipsec_crypto_profiles" {
  value       = sase_ipsec_crypto_profiles.this
  description = "The IPSec crypto profiles that are created and managed by the Palo ALto Networks SASE service"
}