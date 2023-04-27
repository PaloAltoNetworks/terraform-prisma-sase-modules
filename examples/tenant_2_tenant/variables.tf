variable "from_tenant_id" {
  type        = string
  description = "Tenant ID Your Moving From"
  default     = ""
}

variable "to_tenant_id" {
  type        = string
  description = "Tenant ID Your Moving To"
  default     = ""
}

variable "policy_objects_folders" {
  default = ["Shared", "Remote Networks", "Mobile Users", "Mobile Users Explicit Proxy"]
}

variable "positions" {
  default = ["pre", "post"]
}