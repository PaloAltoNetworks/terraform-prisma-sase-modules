resource "sase_ike_crypto_profiles" "this" {
  for_each   = try(var.ike_crypto_profiles, {})
  dh_group   = try(each.value.dh_group, ["group2"])        # Default to group2
  encryption = try(each.value.encryption, ["aes-256-cbc"]) # Default to aes-256-cbc
  folder     = try(each.value.folder, "Remote Networks")   # Default to Remote Networks Folder
  hash       = try(each.value.hash, ["sha1"])              # Default to sha1
  name       = each.key
}

resource "sase_ipsec_crypto_profiles" "this" {
  for_each = try(var.ipsec_crypto_profiles, {})
  folder   = "Remote Networks"
  esp = {
    authentication = try(each.value.esp.authentication, null)
    encryption     = try(each.value.esp.encryption, null)
  }
  ah = try(each.value.ah, null)
  lifetime = {
    days    = try(each.value.lifetime.days, null)
    minutes = try(each.value.lifetime.minutes, null)
    seconds = try(each.value.lifetime.seconds, null)
    hours   = try(each.value.lifetime.hours, null)
  }
  name     = each.key
  dh_group = try(each.value.dh_group, null)
  lifesize = try({
    gb = try(each.value.lifesize.gb, null)
    kb = try(each.value.lifesize.kb, null)
    mb = try(each.value.lifesize.mb, null)
    tb = try(each.value.lifesize.tb, null)
  }, null)
}

#resource "sase_ike_gateways" "this" {
#  folder = "Remote Networks"
#  name = "terraform-ike-6"
#  authentication = {
#    pre_shared_key               = {
#      key = "mytestkey1234"
#    }
#  }
#  peer_address = {
#    ip = "81.107.85.198"
#  }
#  protocol = {
#    ikev1 = {
#      dpd = {
#        enable = true
#      }
#      ike_crypto_profile = "PaloAlto-Networks-IKE-Crypto"
#    }
#    version = "ikev1"
#  }
#}

resource "sase_ipsec_tunnels" "this" {
  for_each = try(var.ipsec_tunnels, {})
  folder   = try(each.value.folder, "Remote Networks") # Default to Remote Networks
  name     = each.key
  auto_key = {
    ike_gateway          = try(each.value.auto_key.ike_gateway, null)          # Fail the resource build, ike_gateway required
    ipsec_crypto_profile = try(each.value.auto_key.ipsec_crypto_profile, null) # Fail to the resource build, profile required
    proxy_id             = null
    #    proxy_id = {
    #      name = ""
    #      protocol = {
    #        number = -1
    #        tcp = {
    #          local_port = 99
    #          remote_port = 99
    #        }
    #        udp = {
    #          local_port = 99
    #          remote_port = 99
    #        }
    #      }
    #    }
    #  }
    tunnel_monitor           = try(each.value.tunnel_monitor, null)           # {destination_ip = ""}
    anti_replay              = try(each.value.anti_replay, null)              # boolean
    copy_tos                 = try(each.value.copy_tos, null)                 # boolean
    enable_gre_encapsulation = try(each.value.enable_gre_encapsulation, null) # boolean
  }
}

resource "sase_remote_networks" "this" {
  for_each     = try(var.remote_networks, {})
  folder       = try(each.value.folder, "Remote Networks") # Default to Remote Networks Folder
  license_type = try(each.value.license_type, "FWAAS-AGGREGATE")
  name         = each.key
  region       = try(each.value.region, null)       # Fail out no region was set, required parameter
  spn_name     = try(var.spns[each.value.region].spns[0], null)     # Fail out no spn was set, required parameter
  ipsec_tunnel = try(each.value.ipsec_tunnel, null) # Fail out no ipsec tunnel was set, required parameter
}

#locals {
#  spn_name = var.spns["us-southeast"]
#}
#
#output "spn_name" {
#  value = local.spn_name
#}