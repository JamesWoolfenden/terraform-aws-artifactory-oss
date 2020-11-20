module "art" {
  source             = "../../"
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
