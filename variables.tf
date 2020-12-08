variable "key_name" {
  type = string
}


variable "ssh_cidr" {
  type = list(any)
}

variable "allowed_cidr" {
  type = list(any)
}

variable "sec_group_name" {
  type = string
}

variable "common_tags" {
  type        = map(any)
  description = "Implements the common_tags scheme"
}

variable "vpc_id" {
  type = string
}

variable "instance_type" {
  type        = string
  default     = "t2.small"
  description = "Instance type for your Artifactory instance"
}

variable "subnet_id" {
  type        = string
  description = "Your Subnets..."
}

variable "ssl_certificate_id" {
  type        = string
  description = "Your SSL certificate ID from ACM to add to your Load balancer"
}


variable "zone_id" {
  type        = string
  description = "The ZOne to use for your DNS record"
}

variable "record" {
  type        = string
  description = "The DNS name for Route53"
}
