# pull doc info from here: https://github.com/PaloAltoNetworks/terraform-provider-sase/blob/main/docs/resources/objects_hip_objects.md#nestedatt--anti_malware--criteria

objects = {
  terraform-hip-xdr = {
    folder = "Shared"
    anti_malware = {
      criteria = {
        is_installed = true # Boolean only values
        last_scan_time = {
          not_available = true
        }
        #        product_version = {
        #          greater_than = "2" This is broken in the Provider right now because integer responses are being returned as strings
        #        }
        real_time_protection = "yes" # Possible Values are ["yes", "no"]
        virdef_version = {
          #          within = { is currently broken in the provider because version and days defaults are being enforced instead of either or
          #            days = 7 Days
          #            versions = 2
          #          }
        }
      }
      vendor = [
        {
          name    = "Palo Alto Networks"
          product = ["Cortex XDR"]
        }
      ]
    }
  }
  terraform-disk-encrypt-fv = {
    # Apparently there is character limit of 31 characters for the name of the object???
    folder = "Mobile Users"
    disk_encryption = {
      criteria = {
        is_installed = true # Boolean only values
        encrypted_locations = [
          {
            name = "Macintosh HD"
            #            encryption_state = { # Broken because both values are being enforced, when it should be either or
            #              is = "encrypted" # Possible Values are ["encrypted", "unencrypted", "partial"
            #              is_not = "unencrypted
            #            }
          }
        ]
      }
      vendor = [
        {
          name    = "Apple Inc."
          product = ["FileVault"]
        }
      ]
    }
  }
  terraform-win-firewall = {
    folder = "Shared"
    firewall = {
      criteria = {
        is_installed = true  # Boolean only values
        is_enabled   = "yes" # Boolean only values
      }
      vendor = [
        {
          name    = "Microsoft Corporation"
          product = ["Windows Firewall"]
        }
      ]
    }
  }
  terraform-wifi-check = {
    folder = "Shared"
    network_info = {
      criteria = {
        network = {
          is = {
            wifi = {
              ssid = "MyCorpWifi"
            }
          }
        }
      }
    }
  }
  terraform-hosti-id = {
    folder = "Shared"
    host_info = {
      criteria = {
        domain = {
          is = "mycorp.com"
        }
        #        os = { Broken because defaults are being enforced for all vendors....
        #          contains = {
        #            Apple = "Mac OS X 13.2"
        #          }
        #        }
        host_name = {
          contains = "mycorp"
        }
      }
    }
  }
  terraform-mcafee-dlp = {
    folder = "Shared"
    data_loss_prevention = {
      criteria = {
        is_installed = true  # Boolean only values
        is_enabled   = "yes" # Boolean only values
      }
      vendor = [
        {
          name    = "McAfee, Inc."
          product = ["McAfee DLP Endpoint"]
        }
      ]
    }
  }
  terraform-custom-plist = {
    folder = "Shared"
    custom_checks = {
      criteria = {
        plist = [
          {
            name = "com.apple"
            key = [
              {
                name  = "screensaver"
                value = "60"
              },
              {
                name  = "idleTime"
                value = "600"
              },
              {
                name  = "Safari"
                value = "true"
              }
            ]
          }
        ]
      }
    }
  }
  terraform-custom-regkey = {
    folder = "Shared"
    custom_checks = {
      criteria = {
        registry_key = [
          {
            name = "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System"
            registry_value = [
              {
                name       = "EnableLUA"
                value_data = 1
              }
            ]
          }
        ]
      }
    }
  }
  terraform-process-list = {
    folder = "Shared"
    custom_checks = {
      criteria = {
        process_list = [
          {
            name    = "firefox"
            running = true
          },
          {
            name    = "CortexXDR.exe"
            running = true
          }
        ]
      }
    }
  }
}

profiles = {}