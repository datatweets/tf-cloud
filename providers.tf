terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.67"   # or any recent 4.x
    }
  }
}

provider "aws" {
  region  = "us-east-1"    # <— change to your real Region
  profile = "default"      # optional: only if you use named profiles
}
