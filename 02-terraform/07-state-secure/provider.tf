terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.99.1"
    }
  }
  backend "s3" {
    bucket = "my-terraform-module-demo"
    key    = "practice-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }


#   backend "s3" {
#     bucket = "practice-s3-lock"
#     key    = "practice"
#     region = "us-east-1"
#     dynamodb_table = "practice-s3-lock" # depricated
#   }
}

provider "aws" {
  # Configuration options
}