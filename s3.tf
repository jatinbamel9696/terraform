resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-aws-test-jb-bucket2"

  tags = {
    Name        = "My bucket"
    Environment = "Prod"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
