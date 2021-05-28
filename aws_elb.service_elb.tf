resource "aws_elb" "service_elb" {
  # tfsec:ignore:AWS005
  # checkov:skip= CKV_AWS_92: "Ensure the ELB has access logging enabled"
  # checkov:skip= CKV_AWS_127: not appropriate
  subnets         = [var.subnet_id]
  security_groups = [aws_security_group.elb.id]
  instances       = [aws_instance.art.id]
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

  tags = var.common_tags
}
