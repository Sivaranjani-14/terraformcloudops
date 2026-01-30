terraform {
  cloud {
    organization = "Terraform_Sivaranjani"

    workspaces {
      name = "terraformcloudops"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "terraformcloudops-siva-12345"
}