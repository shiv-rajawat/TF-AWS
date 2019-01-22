## This file containes provider's info. Secret key id and secret key can also be included inside provider block. For more info see:
## https://www.terraform.io/docs/providers/aws/#
provider "aws" {
  region = "us-east-2"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}
