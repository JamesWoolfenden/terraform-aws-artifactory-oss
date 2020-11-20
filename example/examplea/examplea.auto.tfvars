key_name       = "artifactory"
ssh_cidr       = ["86.147.65.243/32"]
allowed_cidr   = ["86.147.65.243/32"]
sec_group_name = "Artifactory"
common_tags = {
  "createdby" = "terraform"
}
vpc_id             = "vpc-0e2e925de622375b5"
instance_type      = "t2.small"
subnet_id          = "subnet-05808ec64faaa18ba"
ssl_certificate_id = "arn:aws:acm:eu-west-2:680235478471:certificate/772b2402-5d4a-457f-829c-02550c8c9244"
zone_id            = "Z0613304D03LG1SU5BI"
record             = "artifact.freebeer.site"
