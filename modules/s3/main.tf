resource "aws_s3_bucket" "thisisit" {
  bucket = var.bucket_name
  tags   = var.tags # Reference the variable
}


resource "aws_s3_bucket_lifecycle_configuration" "thisisit" {
  bucket = aws_s3_bucket.thisisit.id

  rule {
    id     = "expire-old-objects"
    status = "Enabled"

    expiration {
      days = var.lifecycle_days
    }
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "thisisit" {
  bucket = aws_s3_bucket.thisisit.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "thisisit" {
  bucket = aws_s3_bucket.thisisit.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "thisisit" {
  bucket = aws_s3_bucket.thisisit.id

  versioning_configuration {
    status = var.versioning ? "Enabled" : "Suspended"
  }
}

resource "aws_s3_bucket_notification" "thisisit" {
  count  = var.create ? 1 : 0
  bucket = aws_s3_bucket.thisisit.id

  eventbridge = var.Enable_eventbridge
}

resource "aws_s3_bucket_logging" "thisisit" {
  count         = var.enable_logging ? 1 : 0
  bucket        = aws_s3_bucket.thisisit.id
  target_bucket = var.enable_logging
  target_prefix = var.bucket_prefix
}

resource "aws_s3_bucket_object_lock_configuration" "thisisit" {
  bucket = aws_s3_bucket.thisisit.id
  count  = var.enable_bucket ? 1 : 0
}
