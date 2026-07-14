# holden:ignore:HLD_TF_004: example root module, no remote backend needed
terraform {
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "4.2.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">=1.5.0"
}
