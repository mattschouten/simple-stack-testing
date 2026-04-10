terraform {
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
}

provider "local" {}

module "manifest" {
  source = "./modules/manifest-module"

  environment_parent_directory = var.environment_parent_directory
}

module "pets" {
  source = "./modules/pet-module"

  pet_count                    = var.pet_count
  environment_parent_directory = var.environment_parent_directory
}