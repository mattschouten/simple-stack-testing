deployment "test" {
  inputs = {
    environment_name = "test"
    pet_count        = 4
  }
  destroy = false
}

deployment "dev" {
  inputs = {
    environment_name = "dev"
    pet_count        = 2
  }
}

deployment "prod" {
  inputs = {
    environment_name = "dev"
    pet_count        = 2
    parent_directory = "non_default_directory"
  }
  destroy = false
}