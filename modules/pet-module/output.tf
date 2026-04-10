output "pet_names" {
  description = "Names of pets / files created"
  value       = random_pet.pet[*].id
}