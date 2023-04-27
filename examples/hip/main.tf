#module "hip_with_tfvars" {
#  source   = "../../modules/hip"
#  objects  = var.objects
#  profiles = var.profiles
#}

module "hip_with_yaml" {
  source   = "../../modules/hip"
  objects  = yamldecode(file("./data/config.yaml")).objects
  profiles = {}
}

#module "hip_with_json" {
#  source   = "../../modules/hip"
#  objects  = jsondecode(file("./data/config.json")).objects
#  profiles = {}
#}