#
terraform {
  required_version = "1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
  }
}

provider "aws" {
  alias  = "demo"
  region = "eu-west-1"
}