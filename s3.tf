resource "aws_s3_bucket" "ziyo_bucket_gov" {
  bucket              = "ziyotek-2023-bucket-rady"
  force_destroy       = true
  object_lock_enabled = true
  tags = {
    Name        = "Nicholas"
    Environment = "Prod"
  }
}
