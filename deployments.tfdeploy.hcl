deployment "test" {
  inputs = {
    target_environment = "test"
    pet_count          = 4
  }
}

deployment "dev" {
  inputs = {
    target_environment = "dev"
    pet_count          = 2
  }
}