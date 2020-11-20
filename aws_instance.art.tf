resource "aws_instance" "art" {
  #checkov:skip=CKV_AWS_79: "Ensure Instance Metadata Service Version 1 is not enabled"
  ami                    = data.aws_ami.art.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.art.id]
  subnet_id              = var.subnet_id

  root_block_device {
    encrypted   = true
    kms_key_id  = data.aws_ebs_default_kms_key.current.key_arn
    volume_size = 100
  }

  /*
metadata_options {
  http_tokens="required"
}*/

  tags = var.common_tags
}
