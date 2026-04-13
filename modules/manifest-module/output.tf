output "static_timestamp" {
  description = "Manifest timestamp"
  value       = time_static.static_timestamp.rfc3339
}

output "manifest_filename" {
  description = "Filename for manifest file"
  value       = local_file.manifest.filename
}

output "manifest_timestamp" {
  description = "Contents of manifest file"
  value       = "Manifest file created by Terraform Stacks Tutorial at ${time_static.static_timestamp.rfc3339}"
}

output "sim_manifest_filename" {
  description = "Filename that would be assigned to manifest file"
  value       = time_static.static_timestamp.rfc3339
}

output "sim_manifest_contents" {
  description = "Contents that would be put in manifest file"
  value       = "Manifest file created by Terraform Stacks Tutorial at ${time_static.static_timestamp.rfc3339}"
}