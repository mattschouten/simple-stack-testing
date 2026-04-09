output "files_per_environment" {
  description = "Number of files created per environment (pets + manifest)"
  value       = "random_pet.count + 1"
}

output "some_pets" {
  description = "Debug stuff:  pet data structure"
  value       = random_pet.pet
}