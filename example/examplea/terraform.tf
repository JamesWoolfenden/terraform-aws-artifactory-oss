terraform {
  required_providers {
    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.5.0"
    }
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
  required_version = ">=0.14.8"
}
