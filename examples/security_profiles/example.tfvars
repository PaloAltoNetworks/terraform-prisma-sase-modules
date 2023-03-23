vulnerability_protection_profiles = {
  terraform_vp_profile1 = {
    folder      = "Mobile Users"
    description = "Terraform Example1"
    rules = [
      {
        name = "rule1"
        action = {
          alert = true
        }
        host           = "any"
        cve            = ["CVE-2017-11882"]
        packet_capture = "extended-capture"
        vendor_id      = ["cisco"]
        severity       = ["critical"]
        category       = "exploit-kit"
        threat_name    = "test1"
      },
      {
        name = "rule2"
        action = {
          drop = true
        }
        host           = "any"
        cve            = ["CVE-2017-11882"]
        packet_capture = "single-packet"
        vendor_id      = ["juniper"]
        severity       = ["high"]
        category       = "phishing"
        threat_name    = "test2"
      },
      {
        name = "rule3"
        action = {
          reset_both = true
        }
        host           = "any"
        cve            = ["CVE-2017-11882"]
        packet_capture = "extended-capture"
        vendor_id      = ["microsoft"]
        severity       = ["medium"]
        category       = "code-execution"
        threat_name    = "test3"
      }
    ]
  }
  terraform_shared_vp_profile1 = {
    folder      = "Shared"
    description = "Terraform Shared Example1"
    rules = [
      {
        name = "rule1"
        action = {
          alert = true
        }
        host           = "any"
        cve            = ["CVE-2017-11882"]
        packet_capture = "extended-capture"
        vendor_id      = ["meta"]
        severity       = ["critical", "high", "medium"]
        category       = "protocol-anomaly"
        threat_name    = "protocol-freak"
      }
    ]
  }
}
profile_groups = {
  terraform_profile_group1 = {
    folder                            = "Mobile Users"
    description                       = "Terraform Example1"
    vulnerability_protection_profiles = ["terraform_vp_profile1"]
  }
  terraform_shared_profile_group1 = {
    folder                            = "Shared"
    description                       = "Terraform Shared Example1"
    vulnerability_protection_profiles = ["terraform_shared_vp_profile1"]
  }
}

#Anti-Spyware Threat Categories
#["dns-proxy","backdoor","data-theft","autogen","spyware","dns-security","downloader",
#"dns-phishing","phishing-kit","cryptominer","hacktool","dns-benign","dns-wildfire","botnet",
#"dns-grayware","inline-cloud-c2","keylogger","p2p-communication","domain-edl","webshell",
#"command-and-control","dns-ddns", "net-worm","any","tls-fingerprint","dns-new-domain",
#"dns","fraud","dns-c2","adware","post-exploitation","dns-malware","browser-hijack","dns-parked"]

#Vulnerability Protection Threat Categories
#["any", brute-force, code-execution, code-obfuscation, command-execution, dos, exploit-kit,
# info-leak, insecure-credentials, overflow, phishing, protocol-anomaly, scan, sql-injection]