
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
terraform {
  backend "s3" {
    bucket = "athiva-demo-bucket"
    key    = "terraform-statefile/terraform.tfstate"
    region = "ap-south-1"
    profile = "my-admin-profile"
  }
}
