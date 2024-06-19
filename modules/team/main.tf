resource "github_team" "this" {
  name        = var.name
  description = var.description
  privacy     = var.privacy
}

# Assign members to the team if the members list is not empty
resource "github_team_membership" "this" {
  for_each = var.members != [] ? { for member in var.members : member.username => member } : {}

  team_id  = github_team.this.id
  username = each.value.username
  role     = each.value.role
}
