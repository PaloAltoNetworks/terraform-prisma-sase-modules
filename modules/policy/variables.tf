variable "tags" {
  type        = map(any)
  description = "A map of tags to add to security rules"
  default     = {}
}

variable "services" {
  type        = map(any)
  description = "A map of services to create"
  default     = {}
}

variable "service_groups" {
  type        = map(any)
  description = "A map of service groups to create"
  default     = {}
}

variable "addresses" {
  type        = any
  description = "A map of addresses to create"
  default     = {}
}

variable "address_groups" {
  type        = map(any)
  description = "A map of address groups to create"
  default     = {}
}

variable "schedules" {
  type        = any
  description = "A map of schedules to create"
  default     = {}
}

variable "security_rules" {
  type        = any
  description = "A map of security rules to create"
  default     = {}
}

variable "decryption_rules" {
  type        = map(any)
  description = "A map of decryption rules to create"
  default     = {}
}