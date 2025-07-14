terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
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

}

provider "aws" {
  region = "us-east-1"
}