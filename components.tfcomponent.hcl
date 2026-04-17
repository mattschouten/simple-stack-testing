required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.8.1"
  }

  time = {
    source  = "hashicorp/time"
    version = "~> 0.13.1"
  }
}

provider "time" "this" {}
provider "random" "this" {}

component "manifest" {
  source = "./modules/manifest-module"

  inputs = {
    parent_directory = var.parent_directory
    environment_name = var.environment_name
    additional_files = component.pets.pet_filenames
  }

  providers = {
    time = provider.time.this
  }
}

component "pets" {
  source = "./modules/pet-module"

  inputs = {
    pet_count        = var.pet_count
    parent_directory = var.parent_directory
    environment_name = var.environment_name
  }

  providers = {
    random = provider.random.this
  }
}