# holden:ignore:HLD_TF_013: example provider does not assume a role
provider "aws" {
  region = "eu-west-2"

  default_tags {
    tags = {
      Environment = "example"
      ManagedBy   = "terraform"
    }
  }
}
