output "objects" {
  value       = sase_objects_hip_objects.this
  description = "Map of Palo Alto Networks HIP Objects"
}

output "profiles" {
  value       = sase_objects_hip_profiles.this
  description = "Map of Palo Alto Networks HIP Profiles"
}