variable "parent_directory" {
  description = "Parent directory environment directories are placed within"
  type        = string
  default     = "ROOT"
}

variable "environment_name" {
  description = "Environment to deploy"
  type        = string
  default     = "unknown_env"
}