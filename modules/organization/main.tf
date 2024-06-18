data "github_organization" "this" {
  name = var.org_name
}

resource "github_organization_settings" "this" {
  billing_email                                                = var.org_billing_email
  company                                                      = var.org_company_name
  blog                                                         = var.org_blog_url
  email                                                        = var.org_email
  twitter_username                                             = var.org_twitter_username
  location                                                     = var.org_location
  name                                                         = var.org_name
  description                                                  = var.org_description
  has_organization_projects                                    = true
  has_repository_projects                                      = true
  default_repository_permission                                = "none"
  members_can_create_repositories                              = false
  members_can_create_public_repositories                       = false
  members_can_create_private_repositories                      = false
  members_can_create_internal_repositories                     = false
  members_can_create_pages                                     = true
  members_can_create_public_pages                              = true
  members_can_create_private_pages                             = true
  members_can_fork_private_repositories                        = true
  web_commit_signoff_required                                  = false
  advanced_security_enabled_for_new_repositories               = true
  dependabot_alerts_enabled_for_new_repositories               = true
  dependabot_security_updates_enabled_for_new_repositories     = false
  dependency_graph_enabled_for_new_repositories                = true
  secret_scanning_enabled_for_new_repositories                 = true
  secret_scanning_push_protection_enabled_for_new_repositories = true
}
