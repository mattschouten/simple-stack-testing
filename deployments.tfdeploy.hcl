deployment "test" {
  inputs = {
    environment_parent_directory = "my_environments"
    target_environment           = "test"
    pet_count                    = 4
  }
}
