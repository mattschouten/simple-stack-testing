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

resource "time_static" "static_timestamp" {}

resource "local_file" "manifest" {
  content  = "Manifest file created by Terraform Stacks Tutorial at ${time_static.static_timestamp.rfc3339}"
  filename = "${var.environment_parent_directory}/${var.target_environment}/manifest.txt"
}

resource "random_pet" "pet" {
  count  = var.pet_count
  length = 3
}

resource "local_file" "pets" {

  for_each = { for pet in random_pet.pet : pet.id => pet }
  #   count   = var.pet_count

  filename = "${var.environment_parent_directory}/${var.target_environment}/pets/${each.key}"
  content  = "${var.target_environment}: ${var.environment_parent_directory}/dev/${each.key}"
}