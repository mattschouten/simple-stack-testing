variable "environment_parent_directory" {
  description = "Parent directory environment directories are placed within"
  type        = string
  default     = "ROOT"
}

variable "target_environment" {
  description = "Environment to deploy"
  type        = string
  default     = "unknown_env"
}