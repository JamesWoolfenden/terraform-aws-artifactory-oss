resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = var.record
  type    = "A"

  alias {
    evaluate_target_health = false
    name                   = aws_elb.service_elb.dns_name
    zone_id                = aws_elb.service_elb.zone_id
  }
}
