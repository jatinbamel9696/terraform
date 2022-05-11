resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-aws-test-jb-bucket1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}
