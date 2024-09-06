terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.18"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket          = "20240906-iac-with-netbox"
    dynamodb_table  = "terraform-state-lock"
    key             = "dev/terraform.tfstate"
    region          = "ap-northeast-1"
    profile         = "default"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "default"
}
 