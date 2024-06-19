## GitHub Enterprise Repository Module

This module creates a GitHub repository that complies with the [CIS Software Supply Chain Security Guide 1.0](https://github.com/aquasecurity/chain-bench/blob/main/docs/CIS-Software-Supply-Chain-Security-Guide-v1.0.pdf).

## Usage

```hcl
module "repository" {
  source = "github.com/stigian/terraform-github-archimedes//modules/repository"
  version = "1.0.0"

  name        = "example-repo"
  description = "example-description"
  visibility       = "private"
  push_allowances  = ["example-org/example-team"] # org-name/team-name
}
```



