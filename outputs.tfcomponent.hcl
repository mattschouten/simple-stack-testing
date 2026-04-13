output "files_per_environment" {
  description = "Number of files created per environment (pets + manifest)"
  value       = length(component.pets.pet_names) + 1
  type        = number
}

output "pets_created" {
  description = "Names of pet files created"
  value       = component.pets.pet_names
  type        = list(string)
}

output "manifest_filename" {
  description = "Manifest filename"
  value       = component.manifest.sim_manifest_filename
  type        = string
}

output "manifest_timestamp" {
  description = "Contents of manifest file"
  value       = component.manifest.contents
  type        = string
}

output "all_files" {
  description = "What the filesystem could look like"
  value       = concat([component.manifest.sim_manifest_filename], component.pets.pet_filenames)
  type        = list(string)
}