output "pet_names" {
  description = "Names of pets created"
  value       = random_pet.pet[*].id
}

output "pet_filenames" {
  description = "Names of pet files created by the files that would be created in the environment / pets directory"
  value       = [for p in local_file.pets : p.filename]
}
