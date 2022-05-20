terraform {
  backend "s3" {
    bucket = "my-tf-aws-test-jb-bucket"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
module "terraform_vpc-and internet-gateway-module" {
 source  = "./vpc"
}
