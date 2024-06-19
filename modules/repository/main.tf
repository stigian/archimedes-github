
resource "github_repository" "this" {
  name        = var.repo_name
  description = var.repo_description

  visibility = var.visibility

  auto_init              = true
  has_issues             = true
  has_discussions        = true
  has_projects           = true
  has_wiki               = true
  allow_merge_commit     = false # CIS 1.1.13 Ensure linear history is required
  allow_squash_merge     = true  # CIS 1.1.13 Ensure linear history is required
  allow_rebase_merge     = true  # CIS 1.1.13 Ensure linear history is required
  allow_auto_merge       = false
  allow_update_branch    = true # CIS 1.1.10 Ensure open git branches are up to date before they can be merged into codebase
  delete_branch_on_merge = false
  archive_on_destroy     = true # Prevent accidental deletion
  vulnerability_alerts   = true

  security_and_analysis {
    advanced_security {
      status = "enabled"
    }
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
}

resource "github_branch" "development" {
  repository = github_repository.this.name
  branch     = "dev"
}

resource "github_branch" "test" {
  repository = github_repository.this.name
  branch     = "test"
}

resource "github_branch" "main" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "main" {
  repository = github_repository.this.name
  branch     = github_branch.main.branch
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.this.node_id

  pattern                         = "main"
  enforce_admins                  = true  # CIS 1.1.14 Ensure branch protection rules are enforced on administrators
  require_conversation_resolution = true  # CIS 1.1.11 Ensure all open comments are resolved before allowing to merge code changes
  require_signed_commits          = true  # CIS 1.1.12 Ensure verifying signed commits of new changes before merging
  required_linear_history         = true  # CIS 1.1.13 Ensure linear history is required
  allows_deletions                = false # CIS 1.1.17 Ensure branch deletions are denied
  allows_force_pushes             = false # CIS 1.1.16 Ensure force pushes code to branches is denied

  # restrict_pushes {
  # }

  # force_push_bypassers = [] # Allow no one to bypass force push restrictions

  # https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection#required-status-checks
  required_status_checks {
    strict   = true # CIS 1.1.10 Ensure open git branches are up to date before they can be merged into codebase
    contexts = []
  }

  # CIS 1.1.3 Ensure any change to code receives approval of two strongly authenticated users
  # CIS 1.1.4 Ensure previous approvals are dismissed when updates are introduced to a code change proposal
  # CIS 1.1.5 Ensure that there are restrictions on who can dismiss code change reviews
  required_pull_request_reviews {
    dismiss_stale_reviews = true
    restrict_dismissals   = true
    dismissal_restrictions = [
      github_team.administrators.node_id,
      "/exampleuser",
      "stigian/exampleteam",
    ]
  }

  # CIS 1.1.15 Ensure pushing of new code is restricted to specific individuals or teams
  # restrict_pushes {
  #   push_allowances = [
  #     data.github_user.example.node_id,
  #     "/exampleuser",
  #     "exampleorganization/exampleteam",
  #     # you can have more than one type of restriction (teams + users). If you use
  #     # more than one type, you must use node_ids of each user and each team.
  #     # github_team.example.node_id
  #     # github_user.example-2.node_id
  #   ]
  # }

  # force_push_bypassers = [
  #   data.github_user.example.node_id,
  #   "/exampleuser",
  #   "exampleorganization/exampleteam",
  #   # you can have more than one type of restriction (teams + users)
  #   # github_team.example.node_id
  #   # github_team.example-2.node_id
  # ]

}
