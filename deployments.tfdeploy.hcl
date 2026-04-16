deployment "test" {
  inputs = {
    environment_name = "test"
    pet_count        = 4
  }
}

deployment "dev" {
  inputs = {
    environment_name = "dev"
    pet_count        = 2
  }
}