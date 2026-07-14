output "instance" {
  value       = aws_instance.art
  description = "The Artifactory EC2 instance"
}

output "elb" {
  value       = aws_elb.service_elb
  description = "The ELB fronting the Artifactory instance"
}

output "record" {
  value       = aws_route53_record.www
  description = "The Route53 DNS record pointing at the ELB"
}
