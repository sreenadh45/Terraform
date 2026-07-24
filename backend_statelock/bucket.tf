resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket-45"
}

resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}