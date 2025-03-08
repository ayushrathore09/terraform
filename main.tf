# creating aws s3 bucket
resource "aws_s3_bucket" "test_bucket" {
  bucket = "bucket094589"
  tags = {
    Name = "test_bucket"
  }
}