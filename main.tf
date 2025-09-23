# Configure the AWS provider
# Create S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "omer-terraform-bucket-12345"   # Must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyTerraformBucket"
    Environment = "Dev"
  }
}
