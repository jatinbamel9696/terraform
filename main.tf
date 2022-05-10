resource "aws_s3_bucket" "test" {
  bucket = "my-jatinbamel-test-terraform"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.test.id
  acl    = "private"
}
