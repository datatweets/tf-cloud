terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
data "aws_caller_identity" "current" {}

output "current_account_id" {
  value = data.aws_caller_identity.current.account_id
}
