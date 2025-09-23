# Configure the AWS provider
provider "aws" {
  region = "us-east-1"   # Change region as needed
}

# Create S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "omer-terraform-bucket-12345"   # Must be globally unique
  acl    = "private"

  tags = {
    Name        = "MyTerraformBucket"
    Environment = "Dev"
  }
}
