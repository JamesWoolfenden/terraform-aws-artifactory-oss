variable "instance_profile" {
  type        = string
  description = "IAM instance profile to attach to the EC2 instance"

  validation {
    condition     = length(var.instance_profile) > 0
    error_message = "instance_profile must not be empty."
  }
}

variable "key_name" {
  type        = string
  description = "Name of the AWS key pair to attach to the EC2 instance"
  sensitive   = true

  validation {
    condition     = length(var.key_name) > 0
    error_message = "key_name must not be empty."
  }
}

variable "ssh_cidr" {
  type        = list(any)
  description = "List of CIDR blocks allowed to reach the instance over SSH"

  validation {
    condition     = length(var.ssh_cidr) > 0
    error_message = "ssh_cidr must contain at least one CIDR block."
  }
}

variable "allowed_cidr" {
  type        = list(any)
  description = "List of CIDR blocks allowed to reach Artifactory through the load balancer"

  validation {
    condition     = length(var.allowed_cidr) > 0
    error_message = "allowed_cidr must contain at least one CIDR block."
  }
}

variable "sec_group_name" {
  type        = string
  description = "Name to assign to the Artifactory and ELB security groups"

  validation {
    condition     = length(var.sec_group_name) > 0
    error_message = "sec_group_name must not be empty."
  }
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC to deploy Artifactory and its security groups into"

  validation {
    condition     = can(regex("^vpc-", var.vpc_id))
    error_message = "vpc_id must be a valid VPC ID starting with \"vpc-\"."
  }
}

variable "instance_type" {
  type        = string
  description = "Instance type for your Artifactory instance"

  validation {
    condition     = length(var.instance_type) > 0
    error_message = "instance_type must not be empty."
  }
}

variable "subnet_id" {
  type        = string
  description = "Your Subnets..."

  validation {
    condition     = can(regex("^subnet-", var.subnet_id))
    error_message = "subnet_id must be a valid subnet ID starting with \"subnet-\"."
  }
}

variable "ssl_certificate_id" {
  type        = string
  description = "Your SSL certificate ID from ACM to add to your Load balancer"

  validation {
    condition     = can(regex("^arn:aws:acm:", var.ssl_certificate_id))
    error_message = "ssl_certificate_id must be a valid ACM certificate ARN."
  }
}

variable "zone_id" {
  type        = string
  description = "The ZOne to use for your DNS record"

  validation {
    condition     = length(var.zone_id) > 0
    error_message = "zone_id must not be empty."
  }
}

variable "record" {
  type        = string
  description = "The DNS name for Route53"

  validation {
    condition     = length(var.record) > 0
    error_message = "record must not be empty."
  }
}
