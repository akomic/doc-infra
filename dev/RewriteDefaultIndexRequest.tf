resource "aws_cloudfront_function" "RewriteDefaultIndexRequest" {
  name    = "RewriteDefaultIndexRequest-${var.environment}"
  runtime = "cloudfront-js-1.0"
  comment = "RewriteDefaultIndexRequest-${var.environment}"
  publish = true
  code    = file("${path.root}/RewriteDefaultIndexRequest.js")
}
