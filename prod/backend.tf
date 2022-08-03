terraform {
  backend "s3" {
    bucket = "doc-state.tf"
    key    = "prod.state"
    region = "us-east-1"
  }
}
