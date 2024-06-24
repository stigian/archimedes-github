## GitHub Enterprise Organization Module

This module configures an _existing_ GitHub organization according to the [CIS Software Supply Chain Security Guide v.1.0](https://github.com/aquasecurity/chain-bench/blob/main/docs/CIS-Software-Supply-Chain-Security-Guide-v1.0.pdf). The settings defined here flow down to all repositories within the organization. Additional settings not avaialble at the organiation level are defined in the [repository module](../repository/README.md).

### Pre-requisites

- GitHub Enterprise Cloud with GitHub Advanced Security

### Usage

```hcl
module "org" {
  source = "github.com/stigian/terraform-github-archimedes//modules/organization"
  version = "0.1.0"

  billing_email    = var.billing_email
  company_name     = var.company_name
  blog_url         = var.blog_url
  email            = var.email
  twitter_username = var.twitter_username
  location         = var.location
  name             = var.name
  description      = var.description
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
| [github_organization_settings.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_settings) | resource |
| [github_organization.this](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_email"></a> [billing\_email](#input\_billing\_email) | The billing email for the GitHub organization | `string` | n/a | yes |
| <a name="input_blog_url"></a> [blog\_url](#input\_blog\_url) | The URL of the GitHub organization's blog | `string` | `null` | no |
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | The name of the company owning/operating the GitHub organization | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the GitHub organization | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | The display name for the GitHub organization (may be different from the org name) | `string` | n/a | yes |
| <a name="input_email"></a> [email](#input\_email) | The contact email for the GitHub organization | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | The location of the company or organization (default is null) | `string` | `null` | no |
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | The registered GitHub organization name (may be different from the display name) | `string` | n/a | yes |
| <a name="input_twitter_username"></a> [twitter\_username](#input\_twitter\_username) | The Twitter username for the GitHub organization (default is null) | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->