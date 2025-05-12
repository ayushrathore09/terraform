terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "my-tf-test-bucket090909"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-backend-table"
  }
}