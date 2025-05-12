resource "aws_dynamodb_table" "my-dynamodb-table" {
  name           = "remote-backend-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
  
   tags = {
    Name        = "dynamodb-table-1"
  }
}