###############################################################################
# Team Repository
###############################################################################

data "github_team" "this" {
  for_each = { for team in var.teams : team.name => team }

  slug = each.key
}

resource "github_team_repository" "this" {
  for_each = { for team in var.teams : team.name => team }

  team_id    = data.github_team.this[each.key].id
  repository = var.repository
  permission = each.value.role
}
