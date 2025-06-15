terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.99.1"
    }
  }
  backend "s3" {

  }


  #   backend "s3" {
  #     bucket = "practice-s3-lock"
  #     key    = "practice"
  #     region = "us-east-1"
  #     dynamodb_table = "practice-s3-lock" # depricated
  #   }
}

provider "aws" {
  region = "us-east-1"
}