data "aws_ami" "art" {
  most_recent = true
  owners      = ["979382823631"]

  filter {
    name   = "name"
    values = ["bitnami-artifactory-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
