## GitHub Enterprise Team Repository Module

This module takes a list of teams and assigns them to a repository. It also sets the desired [role](https://docs.github.com/en/organizations/managing-user-access-to-your-organizations-repositories/managing-repository-roles/repository-roles-for-an-organization) for the team on that repository (e.g. pull, push, triage, maintain, admin). This module can be used in conjunction with the [team module](../team/README.md). The `team` module creates the teams, and this module assigns the teams to repositories.

If you are using something like [Entra ID](https://learn.microsoft.com/en-us/entra/identity/saas-apps/github-tutorial) to manage SSO to your GitHub organization you still need a way to assign teams to repositories. This module is designed to help with that by enabling you to use code to manage each team's access to repositories.

## Usage

```hcl
module "team_assignment" {
  source  = "github.com/stigian/terraform-github-archimedes//modules/team-repository"
  version = "0.1.0"

  repository = "example-repo"
  teams      = [
    {
      name = "team1"
      role = "admin"
    },
    {
      name = "team2"
      role = "push"
    }
  ]
}
```


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_team_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |
| [github_team.this](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/team) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository"></a> [repository](#input\_repository) | The name of the repository to assign teams to | `string` | n/a | yes |
| <a name="input_teams"></a> [teams](#input\_teams) | List of teams to be assigned to the repository (default is none) | <pre>list(object({<br>    name = string<br>    role = string # Options: "pull", "push", "triage", "maintain", "admin"<br>  }))</pre> | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->