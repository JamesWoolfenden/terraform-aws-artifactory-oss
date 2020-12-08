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
  type = map(any)
}

variable "vpc_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "ssl_certificate_id" {
  type = string
}

variable "zone_id" {
  type = string
}

variable "record" {
  type = string
}
