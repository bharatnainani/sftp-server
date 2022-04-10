terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Project     = var.project
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}

data "aws_caller_identity" "current" {}

# We can use terraform backend for s3 also. For this demo I have commented  this. But for PRODUCTION we should always use S3 and other solutions

# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-bucket-accountId"
#     key            = "sftp/terraform.tfstate"
#     region         =  "us-east-1"
#     encrypt        =  true
#   }
# }