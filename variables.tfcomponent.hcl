variable "parent_directory" {
  description = "Parent directory environment directories are placed within"
  type        = string
  default     = "stacks_tutorial"
}

variable "environment_name" {
  description = "Environment to deploy - bridge to Stacks"
  type        = string
  default     = "DEFAULT_TARGET"
}