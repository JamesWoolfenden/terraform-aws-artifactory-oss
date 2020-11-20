output "instance" {
  value = aws_instance.art
}

output "elb" {
  value = aws_elb.service_elb
}

output "record" {
  value = aws_route53_record.www
}
