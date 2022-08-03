terraform {
  backend "s3" {
    bucket = "doc-state.tf"
    key    = "dev.state"
    region = "us-east-1"
  }
}
