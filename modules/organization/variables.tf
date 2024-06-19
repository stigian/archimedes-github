###############################################################################
# Organization Variables
###############################################################################
variable "org_name" {
  description = "The registered GitHub organization name (may be different from the display name)"
  type        = string
}

variable "billing_email" {
  description = "The billing email for the GitHub organization"
  type        = string
}

variable "company_name" {
  description = "The name of the company owning/operating the GitHub organization"
  type        = string
}

variable "blog_url" {
  description = "The URL of the GitHub organization's blog"
  type        = string
  default     = null
}

variable "email" {
  description = "The contact email for the GitHub organization"
  type        = string
}

variable "twitter_username" {
  description = "The Twitter username for the GitHub organization"
  type        = string
  default     = null
}

variable "location" {
  description = "The location of the company or organization"
  type        = string
  default     = null
}

variable "display_name" {
  description = "The display name for the GitHub organization (may be different from the registered name)"
  type        = string
}

variable "description" {
  description = "The description of the GitHub organization"
  type        = string
}
