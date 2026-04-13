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