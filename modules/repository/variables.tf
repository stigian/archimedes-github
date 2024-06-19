###############################################################################
# Repository
###############################################################################

variable "repo_name" {
  type        = string
  description = "The name of the repository to create"
}

variable "repo_description" {
  type        = string
  description = "The description of the repository to create"
}

variable "visibility" {
  type        = string
  description = "The visibility of the repository"
  default     = "private"
}
