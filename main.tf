terraform 
{
    cloud 
    {
        organisation="Terraform_Sivaranjani"

        workspaces{
            name=""
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
  bucket = "my-vcs-demo-bucket-12345"
}