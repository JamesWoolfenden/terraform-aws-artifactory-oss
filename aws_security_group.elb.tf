resource "aws_security_group" "elb" {
  name        = "${var.sec_group_name}-elb"
  vpc_id      = var.vpc_id
  description = "Protects ELB access"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    description = "SSL access"
    cidr_blocks = var.allowed_cidr
  }

  ingress {
    cidr_blocks      = var.ssh_cidr
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }

  egress = [{
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    description = "Allow outbound"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = [
      "::/0",
    ]
    prefix_list_ids = []
    security_groups = []
    self            = false
  }]

  tags = var.common_tags
}
