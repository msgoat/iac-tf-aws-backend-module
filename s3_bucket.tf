resource aws_s3_bucket backend {
  bucket = local.s3_bucket_name
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = merge({Name = local.s3_bucket_name}, local.module_common_tags)
}

