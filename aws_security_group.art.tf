resource "aws_security_group" "art" {
  # checkov:skip=CKV_AWS_382: Unrestricted outbound access required for resource functionality
  # holden:ignore:HLD_AWS_092: Unrestricted outbound access required for resource functionality
  description = "Open Source Artifactory"
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description = ""
      from_port   = 0
      ipv6_cidr_blocks = [
        "::/0",
      ]
      prefix_list_ids = []
      protocol        = "-1"
      security_groups = []
      self            = false
      to_port         = 0
    }
  ]

  ingress = [
    {
      cidr_blocks = var.allowed_cidr

      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = [aws_security_group.elb.id]
      self             = false
      to_port          = 65535
    },
    {
      cidr_blocks      = var.ssh_cidr
      description      = ""
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = [aws_security_group.elb.id]
      self             = false
      to_port          = 22
    },
  ]
  name = var.sec_group_name

  vpc_id = var.vpc_id

  timeouts {}
}
