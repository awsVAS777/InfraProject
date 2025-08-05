terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.100.0"
    }
  }
  backend "s3" {
    bucket = "infraproject0508"
    key    = "environment/dev/terraform.tf"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
    region = "ap-south-1"

}