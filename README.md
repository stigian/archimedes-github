# terraform-github-archimedes

This Terraform module is used to create compliant GitHub Enterprise resources for Federal and US Department of Defense software development projects. The module is based on the [CIS Software Supply Chain Security Guide 1.0](https://github.com/aquasecurity/chain-bench/blob/main/docs/CIS-Software-Supply-Chain-Security-Guide-v1.0.pdf) and can be used to create repositories, teams, and other resources in a GitHub Enterprise Cloud or Server environment.

## Prerequisites

- Existing GitHub Enterprise Cloud license
- Terraform or OpenTofu
- GitHub Personal Access Token (PAT) or equivalent GitHub App credentials:
    - repo(all)
    - admin:org

## Usage

Sample code for using modules individually is included in the respective README.md file with each module. The sample code can be copied and pasted into your Terraform configuration file(s) to create the resources. An example showing the modules used together is provided below:

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

module "repository" {
  source = "github.com/stigian/terraform-github-archimedes//modules/repository"
  version = "0.1.0"

  name             = "example-repo"
  description      = "example-description"
  visibility       = "private"
  push_allowances  = ["example-org/example-team"] # org-name/team-name
}

module "team" {
  source = "github.com/stigian/terraform-github-archimedes//modules/team"
  version = "0.1.0"

  name        = "team1"
  description = "This is team1"
  privacy     = "closed"
  members     = [
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

module "team_assignment" {
  source = "github.com/stigian/terraform-github-archimedes//modules/team-repository"
  version = "0.1.0"

  repository = "example-repo"
  teams = [
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

## Roadmap

- Implement remaining CIS 1.0 checks (~7 in-progress)

## Contributing

Contributions are welcome! Please read the [contributing guidelines](.github/CONTRIBUTING.md) for more information.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/stigian/terraform-github-archimedes/tags).

## Authors

- __Lance Hampton__ - _Initial work_ - [lancehampton](https://github.com/lancehampton)

## License

This project is licensed under the Apache-2.0 License - see the [LICENSE.md](.github/LICENSE) file for details

