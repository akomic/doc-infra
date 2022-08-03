provider "github" {}

resource "github_actions_environment_secret" "distribution" {
  repository      = "doc-website"
  environment     = var.environment
  secret_name     = "DISTRIBUTION"
  plaintext_value = module.cdn.cf_id
}

resource "github_actions_environment_secret" "bucket" {
  repository      = "doc-website"
  environment     = var.environment
  secret_name     = "AWS_S3_BUCKET"
  plaintext_value = "ak-${var.environment}-app-origin"
}
