variable "folders" {
  description = "List of String Example: Mobile Users, Remote Networks, Mobile Users Explicit Proxy"
}

variable "trigger" {
  description = "timestamp trigger everyone time"
}
#variable "resources" {
#  description = "list of terraform resources to trigger resource"
#}

variable "destroy_condition" {
  type    = bool
  default = false
}