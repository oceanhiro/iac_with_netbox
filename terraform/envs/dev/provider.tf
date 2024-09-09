terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.18"
    }

    netbox = {
      source  = "e-breuninger/netbox"
      version = "~> 3.9.0"
    }
  }

  backend "s3" {
    bucket         = "20240906-iac-with-netbox"
    dynamodb_table = "terraform-state-lock"
    key            = "dev/terraform.tfstate"
    region         = "ap-northeast-1"
    profile        = "default"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  profile = "default"
}

provider "netbox" {
  server_url = var.netbox_server_url
  api_token  = var.netbox_api_token
}