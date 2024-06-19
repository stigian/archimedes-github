###############################################################################
# Teams
###############################################################################

variable "name" {
  description = "The name of the team to create"
  type        = string
}

variable "description" {
  description = "The description of the team to create"
  type        = string
}

variable "privacy" {
  description = "The privacy of the team (closed or secret)"
  type        = string
  default     = "closed"
}

variable "members" {
  description = "The list of GitHub usernames to add to the team"
  type = list(object({
    username = string
    role     = string # Options: "pull", "push", "triage", "maintain", "admin"
  }))
  default = []
}
