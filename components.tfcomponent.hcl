required_providers {
  local = {
    source  = "hashicorp/local"
    version = "~> 2.8.0"
  }

  time = {
    source  = "hashicorp/time"
    version = "~> 0.13.1"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.8.1"
  }
}

provider "local" "this" {}
provider "time" "this" {}
provider "random" "this" {}

component "manifest" {
  source = "./modules/manifest-module"

  inputs = {
    environment_parent_directory = var.environment_parent_directory
  }

  providers = {
    local = provider.local.this
    time  = provider.time.this
  }
}

component "pets" {
  source = "./modules/pet-module"

  inputs = {
    pet_count                    = var.pet_count
    environment_parent_directory = var.environment_parent_directory
  }

  providers = {
    local  = provider.local.this
    random = provider.random.this
  }
}