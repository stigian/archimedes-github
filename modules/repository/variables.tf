###############################################################################
# Repository
###############################################################################

variable "name" {
  type        = string
  description = "The name of the repository to create"
}

variable "description" {
  type        = string
  description = "The description of the repository to create"
}

variable "visibility" {
  type        = string
  description = "The visibility of the repository"
  default     = "private"
}

variable "push_allowances" {
  description = "List of team names allowed to push to the main branch (default is none)"
  type        = list(string)
  default     = []
}

variable "vulnerability_alerts" {
  type        = bool
  description = "Enable security alerts for vulnerable dependencies (default true for GHEC)"
  default     = true
}
