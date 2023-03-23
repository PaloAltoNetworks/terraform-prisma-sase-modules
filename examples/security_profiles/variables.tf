variable "anti_spyware_profiles" {
  type    = map(any)
  default = {}
}

variable "wildfire_anti_virus_profiles" {
  type    = map(any)
  default = {}
}

variable "vulnerability_protection_profiles" {
  type    = map(any)
  default = {}
}

variable "dns_security_profiles" {
  type    = map(any)
  default = {}
}

variable "file_blocking_profiles" {
  type    = map(any)
  default = {}
}

variable "profile_groups" {
  type    = map(any)
  default = {}
}