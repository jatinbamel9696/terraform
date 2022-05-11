terraform {
  backend "s3" {
    bucket = "awsnow.in"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
