provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket-prefix
  tags          = var.tags
}

resource "aws_s3_bucket_acl" "my-s3-bucket" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  acl    = var.acl

}
resource "aws_s3_bucket_versioning" "versioning_my-s3-bucket" {
  bucket = aws_s3_bucket.my-s3-bucket.id
  versioning_configuration {
    status = var.versioning
  }
}