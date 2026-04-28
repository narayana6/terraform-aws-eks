terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.95.0, < 6.0.0"
    }
  }
  backend "s3" {
    bucket = "bnsaws-remote-state"
    key    = "expense-dev-ecr"
    region = "us-east-1"
    dynamodb_table = "bnsaws-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}