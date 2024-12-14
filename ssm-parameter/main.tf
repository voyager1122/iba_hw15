provider "aws" {
  region = "us-east-1"
}


module "secret" {
  source  = "terraform-aws-modules/ssm-parameter/aws"

  name        = "ivanfan-secret-token"
  value       = "my$uper$ecret122024"
  secure_type = true
}
