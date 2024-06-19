## GitHub Enterprise Repository Module

This module creates and configures _new_ GitHub repositories according to the [CIS Software Supply Chain Security Guide v.1.0](https://github.com/aquasecurity/chain-bench/blob/main/docs/CIS-Software-Supply-Chain-Security-Guide-v1.0.pdf). When used in conjunction with the [organization module](../organization/README.md), organization members will _not_ be allowed to create repositories outside of the defined configuration. In that case, this module should be used to create all new repositories within the organization.

### Pre-requisites

- GitHub Enterprise Cloud with GitHub Advanced Security

### Usage

```hcl

```