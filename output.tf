output "files_per_environment" {
  description = "Number of files created per environment (pets + manifest)"
  value       = length(module.pets.pet_names) + 1
}

output "pets_created" {
  description = "Names of pet files created"
  value       = module.pets.pet_names
}