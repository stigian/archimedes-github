###############################################################################
# Team Respository
###############################################################################

variable "teams" {
  description = "List of teams to be assigned to the repository (default is none)"
  type = list(object({
    name = string
    role = string # Options: "pull", "push", "triage", "maintain", "admin"
  }))
  default = []
}

variable "repository" {
  description = "The name of the repository to assign teams to"
  type        = string
}
