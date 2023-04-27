terraform {
  required_providers {
    sase = {
      source  = "paloaltonetworks-local/sase"
      version = "1.0.0"
    }
  }
  required_version = ">= 1.3.9"
}