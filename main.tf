# Define the AWS provider
provider "aws" {
  region = "us-east-1"  # Change this to your desired AWS region
}

# Data source to fetch AWS account details
data "aws_caller_identity" "current" {}

# Output the AWS account ID
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
