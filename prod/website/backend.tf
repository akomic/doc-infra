terraform {
  backend "s3" {
    bucket = "doc-state.tf"
    key    = "prod/website.state"
    region = "us-east-1"
  }
}
