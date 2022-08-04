module "sftp" {
  source  = "cloudposse/transfer-sftp/aws"
  version = "1.1.0"

  environment = var.environment

  sftp_users = var.sftp_users

  restricted_home = true

  s3_bucket_name = module.cdn.s3_bucket
}
