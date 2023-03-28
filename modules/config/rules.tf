locals {
  positions = var.positions
  folders   = var.policy_objects_folders

  folder_position_map = merge([
    for position in local.positions : {
      for folder in local.folders : lower(replace("${folder}_${position}"," ", "_")) => {
        name     = folder
        position = position
      }
    }
  ]...)
}



data "sase_security_rules_list" "this" {
  for_each = local.folder_position_map
  folder   = each.value.name
  position = each.value.position
  depends_on = []
}