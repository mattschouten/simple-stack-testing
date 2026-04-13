variable "environment_parent_directory" {
  description = "Parent directory environment directories are placed within"
  type        = string
  default     = "my_environments"
}

variable "target_environment" {
  description = "Environment to deploy - bridge to Stacks"
  type        = string
  default     = "dev"
}

variable "pet_count" {
  description = "Number of pets to create"
  type        = number
  default     = 3
}