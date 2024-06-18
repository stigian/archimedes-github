###############################################################################
# Organization Variables
###############################################################################
variable "org_billing_email" {
  description = "The billing email for the GitHub organization"
  type        = string
}

variable "org_company_name" {
  description = "The name of the company owning/operating the GitHub organization"
  type        = string
}

variable "org_blog_url" {
  description = "The URL of the GitHub organization's blog"
  type        = string
  default     = null
}

variable "org_email" {
  description = "The contact email for the GitHub organization"
  type        = string
}

variable "org_twitter_username" {
  description = "The Twitter username for the GitHub organization"
  type        = string
  default     = null
}

variable "org_location" {
  description = "The location of the company or organization"
  type        = string
  default     = null
}

variable "org_name" {
  description = "The display name of the GitHub organization"
  type        = string
}

variable "org_description" {
  description = "The description of the GitHub organization"
  type        = string
}
