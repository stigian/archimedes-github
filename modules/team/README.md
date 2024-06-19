## GitHub Enterprise Team Module

This module creates teams in a GitHub Enterprise organization. You can use this module with the [team repository module](../team-repository/README.md) to assign teams and roles to a repository.

## Usage

````hcl
module "team_assignments" {
  source = "github.com/stigian/terraform-github-archimedes//modules/team"
  version = "1.0.0"

  name = "team1"
  description = "This is team1"
  privacy = "closed"
  members = [
    {
      username = "user1"
      role = "maintainer"
    },
    {
      username = "user2"
      role = "member"
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
| [github_team.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the team to create | `string` | n/a | yes |
| <a name="input_members"></a> [members](#input\_members) | The list of GitHub usernames to add to the team | <pre>list(object({<br>    username = string<br>    role     = string # Options: "pull", "push", "triage", "maintain", "admin"<br>  }))</pre> | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the team to create | `string` | n/a | yes |
| <a name="input_privacy"></a> [privacy](#input\_privacy) | The privacy of the team (closed or secret) | `string` | `"closed"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->