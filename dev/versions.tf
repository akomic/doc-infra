terraform {
  required_version = ">= 1.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.24.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.28.0"
    }
  }
}
