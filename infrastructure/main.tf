data "aws_kms_key" "kms_key" {
  key_id = "alias/student-main-key"
}

resource "random_string" "random" {
  special = false
  length = 10
  upper = false
}

resource "aws_s3_bucket" "s3" {
  bucket        = "bucket-${random_string.random.result}"
  force_destroy = true
}


resource "aws_s3_bucket_server_side_encryption_configuration" "sse_custom_kms" {
  bucket = aws_s3_bucket.s3.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = data.aws_kms_key.kms_key.arn
      sse_algorithm     = "aws:kms"
    }
    bucket_key_enabled = false
  }
}