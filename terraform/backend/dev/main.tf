terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.18"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "default"
}

module "backend" {
  source        = "../../modules/backend"
  bucket_name   = var.bucket_name
  dynamoDB_name = var.dynamoDB_name
}