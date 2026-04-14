output "files_per_environment" {
  description = "Number of files created per environment (pets + manifest)"
  value       = length(component.pets.pet_names) + 1
  type        = number
}

output "pet_files_created" {
  description = "Names of pet files created"
  value       = component.pets.pet_filenames
  type        = list(string)
}

output "manifest_filename" {
  description = "Manifest filename"
  value       = component.manifest.manifest_filename
  type        = string
}

output "manifest_contents" {
  description = "Contents of manifest file"
  value       = component.manifest.manifest_contents
  type        = string
}

output "all_files" {
  description = "What the filesystem would look like"
  value       = concat([component.manifest.filename], component.pets.pet_filenames)
  type        = list(string)
}