terraform {
  backend "s3" {
    bucket = "doc-state.tf"
    key    = "dev/website.state"
    region = "us-east-1"
  }
}
