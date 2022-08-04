variable "environment" {}
variable "sftp_users" {
  type = map(object({
    user_name  = string,
    public_key = string
  }))

  default = {}
}
