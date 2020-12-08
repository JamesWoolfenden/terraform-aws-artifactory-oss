# terraform-aws-artifactory-oss

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-artifactory-oss.svg)](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module -

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

This is just a very basic example using Bitnamis AMI.

![alt text](./diagram/art.png)

Copy the example or just include **module.art.tf** from this repository as a module in your existing Terraform code:

```terraform
module "art" {
  source             = "JamesWoolfenden/artifactory-oss/aws"
  version            = "0.1.0"
  common_tags        = var.common_tags
  instance_type      = var.instance_type
  key_name           = var.key_name
  vpc_id             = var.vpc_id
  ssl_certificate_id = var.ssl_certificate_id
  sec_group_name     = var.sec_group_name
  allowed_cidr       = var.allowed_cidr
  subnet_id          = var.subnet_id
  ssh_cidr           = var.ssh_cidr
  record             = var.record
  zone_id            = var.zone_id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | 3.16.0 |
| local | 2.0.0 |
| tls |  3.0.0 |

## Providers

| Name | Version |
|------|---------|
| aws | 3.16.0 |
| local | 2.0.0 |
| tls |  3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allowed\_cidr | n/a | `list` | n/a | yes |
| common\_tags | n/a | `map` | n/a | yes |
| instance\_type | n/a | `string` | `"t2.small"` | no |
| key\_name | n/a | `string` | n/a | yes |
| record | n/a | `string` | n/a | yes |
| sec\_group\_name | n/a | `string` | n/a | yes |
| ssh\_cidr | n/a | `list` | n/a | yes |
| ssl\_certificate\_id | n/a | `string` | n/a | yes |
| subnet\_id | n/a | `string` | n/a | yes |
| vpc\_id | n/a | `string` | n/a | yes |
| zone\_id | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| elb | n/a |
| instance | n/a |
| record | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss/issues) to report any bugs or file feature requests.

## Copyrights

Copyright � 2019-2020 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-artifactory-oss&url=https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-artifactory-oss&url=https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss
[share_email]: mailto:?subject=terraform-aws-artifactory-oss&body=https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss
