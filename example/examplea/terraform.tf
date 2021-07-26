terraform {
  required_providers {
    aws = {
      version = "3.51.0"
      source  = "hashicorp/aws"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.0.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
  }
  required_version = ">=0.14.8"
}
