output "manifest_timestamp" {
  description = "Manifest timestamp"
  value       = time_static.static_timestamp.rfc3339
}

output "manifest_filename" {
  description = "Filename of manifest file"
  value       = local_file.manifest.filename
}

output "manifest_contents" {
  description = "Contents of manifest file"
  value       = local_file.manifest.content
}