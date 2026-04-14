resource "time_static" "static_timestamp" {}

resource "local_file" "manifest" {
  content  = "Manifest file created by Terraform Stacks Tutorial at ${time_static.static_timestamp.rfc3339}"
  filename = "${var.environment_parent_directory}/${var.target_environment}/manifest.txt"
}