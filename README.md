# terraform-aws-artifactory-oss

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-artifactory-oss.svg)](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-artifactory-oss.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-artifactory-oss/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-artifactory-oss/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-artifactory-oss&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-artifactory-oss/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-artifactory-oss&benchmark=INFRASTRUCTURE+SECURITY)

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

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| local | n/a |
| tls | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_ami](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) |
| [aws_ebs_default_kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ebs_default_kms_key) |
| [aws_elb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elb) |
| [aws_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) |
| [aws_key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) |
| [aws_route53_record](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) |
| [local_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) |
| [tls_private_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allowed\_cidr | n/a | `list(any)` | n/a | yes |
| common\_tags | Implements the common\_tags scheme | `map(any)` | n/a | yes |
| instance\_type | Instance type for your Artifactory instance | `string` | `"t2.small"` | no |
| key\_name | n/a | `string` | n/a | yes |
| record | The DNS name for Route53 | `string` | n/a | yes |
| sec\_group\_name | n/a | `string` | n/a | yes |
| ssh\_cidr | n/a | `list(any)` | n/a | yes |
| ssl\_certificate\_id | Your SSL certificate ID from ACM to add to your Load balancer | `string` | n/a | yes |
| subnet\_id | Your Subnets... | `string` | n/a | yes |
| vpc\_id | n/a | `string` | n/a | yes |
| zone\_id | The ZOne to use for your DNS record | `string` | n/a | yes |

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

Copyright © 2019-2021 James Woolfenden

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
