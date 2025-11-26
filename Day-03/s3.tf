resource "aws_s3_bucket" "my_bucket" {
  bucket = "test-bucket-sainath"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
  
}