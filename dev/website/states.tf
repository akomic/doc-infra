data "terraform_remote_state" "env" {
  backend = "s3"
  config = {
    bucket = "doc-state.tf"
    key    = "dev.state"
  }
}
