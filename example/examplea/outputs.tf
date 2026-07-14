output "instance" {
  value       = module.art.instance
  description = "The Artifactory EC2 instance"
}

output "elb" {
  value       = module.art.elb
  description = "The ELB fronting the Artifactory instance"
}

output "record" {
  value       = module.art.record
  description = "The Route53 DNS record pointing at the ELB"
}
