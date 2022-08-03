module "acm_request_certificate" {
  source  = "cloudposse/acm-request-certificate/aws"
  version = "0.16.0"

  domain_name                       = var.domain
  process_domain_validation_options = true
  ttl                               = "60"
  subject_alternative_names         = ["*.${var.domain}"]
}
