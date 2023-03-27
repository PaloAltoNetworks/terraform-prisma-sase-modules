security_rules = {
  terraform-secrule-1 = {
    folder                = "Mobile Users"
    action                = "deny"
    source_user           = ["any"]
    source_hip            = ["any"]
    source_regions        = ["RU"]
    destination_regions   = ["RU"]
    source_addresses      = ["10.10.74.7"]
    source_address_groups = ["compromised machines"]
    destination_edls      = ["Palo Alto Networks - Known malicious IP addresses"]
    service_groups        = ["terraform-shared-service-group-1"]
    description           = "Deny all traffic for specific region RU"
    position              = "pre"
    from                  = ["any"]
    to                    = ["any"]
    category              = ["any"]
    application           = ["any"]
    destination_hip       = ["any"]
    disabled              = false
    log_setting           = "Cortex Data Lake"
    negate_source         = false
    negate_destination    = false
    profile_setting = {
      group = ["best-practice"]
    }
  }
  terraform-secrule-2 = {
    folder                = "Shared"
    action                = "allow"
    source                = ["any"]
    source_user           = ["any"]
    source_addresses      = ["10.10.74.6"]
    source_address_groups = ["compromised machines"]
    source_edls           = ["Palo Alto Networks - Bulletproof IP addresses"]
    destination           = ["any"]
    services              = ["terraform-udp-service-1"]
    description           = "Allow all traffic"
    position              = "post"
    from                  = ["any"]
    to                    = ["any"]
    category              = ["any"]
    application           = ["any"]
  }
}

services = {
  terraform-tcp-service-1 = {
    folder      = "Mobile Users"
    description = "HTTPS on 8443 Service for testing"
    protocol = {
      tcp = {
        port        = "8443"
        source_port = null
        override = {
          halfclose_timeout = 1
          timeout           = 5
          timewait_timeout  = 10
        }
      }
    }
  }
  terraform-udp-service-1 = {
    folder      = "Shared"
    description = "DNS Service for testing"
    protocol = {
      udp = {
        port        = "53"
        source_port = null
        override = {
          timeout = 5
        }
      }
    }
  }
}

service_groups = {
  terraform-shared-service-group-1 = {
    folder      = "Shared"
    description = "Service Group for testing"
    members     = ["terraform-udp-service-1"]
  }
  terraform-mu-service-group-1 = {
    folder      = "Mobile Users"
    description = "Service Group for testing"
    members     = ["terraform-tcp-service-1"]
  }
}

addresses = {
  terraform-ipnetmask-google-1 = {
    folder      = "Shared"
    description = "Google Primary DNS1"
    ip_netmask  = "8.8.8.8/32"
  }
  terraform-ip-range-10-100 = {
    folder      = "Shared"
    description = "Private Range 1"
    ip_range    = "10.100.0.1-10.100.0.240"
  }
  terraform-fqdn-pan = {
    folder      = "Shared"
    description = "PANW"
    fqdn        = "www.paloaltonetworks.com"
  }
    terraform-wildcard-pan = {
    folder      = "Shared"
    description = "PANW"
    ip_wildcard       = "10.100.4.0/0.0.248.255"
  }
}