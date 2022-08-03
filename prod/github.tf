provider "github" {}


resource "github_repository_environment" "main" {
  environment = var.environment
  repository  = "doc-website"
}

resource "github_actions_environment_secret" "region" {
  repository      = "doc-website"
  environment     = var.environment
  secret_name     = "AWS_REGION"
  plaintext_value = data.aws_region.current.name

  depends_on = [github_repository_environment.main]
}

resource "github_actions_environment_secret" "key" {
  repository      = "doc-website"
  environment     = var.environment
  secret_name     = "AWS_ACCESS_KEY_ID"
  plaintext_value = aws_iam_access_key.deployer.id

  depends_on = [github_repository_environment.main]
}

resource "github_actions_environment_secret" "secret" {
  repository      = "doc-website"
  environment     = var.environment
  secret_name     = "AWS_SECRET_ACCESS_KEY"
  plaintext_value = aws_iam_access_key.deployer.secret

  depends_on = [github_repository_environment.main]
}
