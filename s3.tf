resource "aws_s3_bucket" "ziyo_bucket" {
  bucket = "ziyotek-2023-first-testing-bucket-rady-1"
  #  force_destroy = true
  tags = {
    Name        = "Ziyo"
    Environment = "DEVELOP"
  }
}
