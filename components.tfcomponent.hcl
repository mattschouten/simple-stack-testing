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
  }

  providers = {
    time = provider.time.this
  }
}