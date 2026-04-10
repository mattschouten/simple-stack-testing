resource "random_pet" "pet" {
  count  = var.pet_count
  length = 3
}

resource "local_file" "pets" {
  for_each = toset(random_pet.pet[*].id)

  filename = "${var.environment_parent_directory}/${var.target_environment}/pets/${each.key}"
  content  = "${var.target_environment}: ${var.environment_parent_directory}/dev/${each.key}"
}