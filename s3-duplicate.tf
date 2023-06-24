resource "aws_s3_bucket" "ziyo_bucket_2" {
  bucket = "ziyotek-2023-first-testing-bucket-rady-2"
  #  force_destroy = true
  tags = {
    Name        = "Mustafa"
    Environment = "DEVELOP"
  }
}