provider "aws" {
  region = "us-east-1"
}

module "cdn" {
  source  = "cloudposse/cloudfront-s3-cdn/aws"
  version = "0.82.4"

  namespace         = "ak"
  stage             = var.environment
  name              = "app"
  aliases           = ["assets.${data.terraform_remote_state.env.outputs.domain}"]
  dns_alias_enabled = true
  parent_zone_name  = data.terraform_remote_state.env.outputs.domain

  acm_certificate_arn = data.terraform_remote_state.env.outputs.cert_arn

  deployment_principal_arns = {
    "${data.terraform_remote_state.env.outputs.iam_user_arn}" = [""]
  }
}
