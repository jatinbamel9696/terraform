terraform {
# Terraform version at the time of writing this post
  required_version = ">= 0.12.24"

  backend "s3" {
    bucket = "awsnow.in"
    key = "awsnow.in/terraform/backend.tfstate"
  }

}

provider "aws" {
  region = "ap-south-1"
}

provider "random" {}
