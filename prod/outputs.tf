output "cert_arn" {
  value = module.acm_request_certificate.arn
}

output "domain" {
  value = var.domain
}

output "iam_user_name" {
  value = aws_iam_user.deployer.name
}

output "iam_user_arn" {
  value = aws_iam_user.deployer.arn
}

output "iam_user_key" {
  value = aws_iam_access_key.deployer.id
}

output "iam_user_secret" {
  value     = aws_iam_access_key.deployer.secret
  sensitive = true
}

output "RewriteDefaultIndexRequestArn" {
  value = aws_cloudfront_function.RewriteDefaultIndexRequest.arn
}
