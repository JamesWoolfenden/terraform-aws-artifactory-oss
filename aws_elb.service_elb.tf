# holden:ignore:HLD_AWS_229 this is tech debt for another time
resource "aws_elb" "service_elb" {

  # checkov:skip= CKV_AWS_127: not appropriate
  # checkov:skip=CKV_AWS_376: SSH listener uses TCP by design
  subnets         = [var.subnet_id]
  security_groups = [aws_security_group.elb.id]
  instances       = [aws_instance.art.id]

  access_logs {
    enabled       = true
    bucket        = var.access_logs_bucket
    bucket_prefix = var.access_logs_prefix
  }

  listener {
    instance_port      = 80
    instance_protocol  = "http"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = var.ssl_certificate_id
  }

  listener {
    instance_port     = 22
    instance_protocol = "tcp"
    lb_port           = 22
    lb_protocol       = "tcp"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "TCP:80"
    interval            = 30
  }


}
