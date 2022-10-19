provider "aws" {
  profile = "my-admin-profile"
  alias  = "ap-south-1"
  region = "ap-south-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
resource "aws_s3_bucket" "demo_bucket_tf" {
  bucket = "demo-tf-pipeline-bucket"
  
}
