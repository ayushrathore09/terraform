resource "aws_s3_bucket" "my_s3" {
  bucket = "my-tf-test-bucket090909"
  tags = {
    Name  = "My bucket"
  }
}