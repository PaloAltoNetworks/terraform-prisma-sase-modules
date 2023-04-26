module "hip_with_tfvars" {
  source   = "../../modules/hip"
  objects  = var.objects
  profiles = var.profiles
}