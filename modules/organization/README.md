## GitHub Enterprise Organization Module
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
| [github_organization_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings) | resource |
| [github_organization.this](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_billing_email"></a> [org\_billing\_email](#input\_org\_billing\_email) | The billing email for the GitHub organization | `string` | n/a | yes |
| <a name="input_org_blog_url"></a> [org\_blog\_url](#input\_org\_blog\_url) | The URL of the GitHub organization's blog | `string` | `null` | no |
| <a name="input_org_company_name"></a> [org\_company\_name](#input\_org\_company\_name) | The name of the company owning/operating the GitHub organization | `string` | n/a | yes |
| <a name="input_org_description"></a> [org\_description](#input\_org\_description) | The description of the GitHub organization | `string` | n/a | yes |
| <a name="input_org_email"></a> [org\_email](#input\_org\_email) | The contact email for the GitHub organization | `string` | n/a | yes |
| <a name="input_org_location"></a> [org\_location](#input\_org\_location) | The location of the company or organization | `string` | `null` | no |
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | The display name of the GitHub organization | `string` | n/a | yes |
| <a name="input_org_twitter_username"></a> [org\_twitter\_username](#input\_org\_twitter\_username) | The Twitter username for the GitHub organization | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->