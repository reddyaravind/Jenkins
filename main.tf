# Define the AWS provider
provider "aws" {
  region = "us-west-2"  # Change this to your desired AWS region
}

# Define an S3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket_prefix = "my-terraform-bucket-"  # Bucket name prefix
}

# Output the name of the created bucket
output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}
