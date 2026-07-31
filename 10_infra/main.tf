# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=1.15.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=6.54.0"
    }
  }
  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-394377826758-ap-northeast-1-an"
    key     = "tastylg-cicd.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "terraform"
  region  = "us-east-1"
}
