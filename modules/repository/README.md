## GitHub Enterprise Repository Module

This module creates a GitHub repository that complies with the [CIS Software Supply Chain Security Guide 1.0](https://github.com/aquasecurity/chain-bench/blob/main/docs/CIS-Software-Supply-Chain-Security-Guide-v1.0.pdf).

> [!NOTE]
> `vulnerability_alerts` should be true for GitHub Enterprise Cloud (GHEC) and false for GitHub Enterprise Server (GHES). GHES requires additional configuration to enable security alerts for vulnerable dependencies. See [this doc page](https://docs.github.com/en/enterprise-server@3.13/admin/configuring-settings/configuring-github-connect/enabling-dependabot-for-your-enterprise) for more information.

## Usage

```hcl
module "repository" {
  source = "github.com/stigian/terraform-github-archimedes//modules/repository"
  version = "0.1.0"

  name                 = "example-repo"
  description          = "example-description"
  visibility           = "private"
  push_allowances      = ["example-org/example-team"] # org-name/team-name
  vulnerability_alerts = true
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
| [github_branch_default.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_branch_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_ruleset.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_ruleset) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the repository to create | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the repository to create | `string` | n/a | yes |
| <a name="input_push_allowances"></a> [push\_allowances](#input\_push\_allowances) | List of team names allowed to push to the main branch (default is none) | `list(string)` | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | The visibility of the repository | `string` | `"private"` | no |
| <a name="input_vulnerability_alerts"></a> [vulnerability\_alerts](#input\_vulnerability\_alerts) | Enable security alerts for vulnerable dependencies (default true for GHEC) | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->