output "manifest_timestamp" {
  description = "Manifest timestamp"
  value       = time_static.static_timestamp.rfc3339
}

output "manifest_filename" {
  description = "Filename of manifest file"
  value       = "${var.environment_parent_directory}/${var.target_environment}/manifest.txt"
}

output "manifest_contents" {
  description = "Contents of manifest file"
  value       = "Manifest file created by Terraform Stacks Tutorial at ${time_static.static_timestamp.rfc3339}"
}