# Define the AWS provider
provider "aws" {
  region = "us-west-2"  # Change this to your desired AWS region
}

# Data source to fetch IAM user details
data "aws_iam_user" "example" {
  user_name = "aravind"  # Replace with your IAM user name
}

# Output the user details
output "user_arn" {
  value = data.aws_iam_user.example.arn
}

output "user_path" {
  value = data.aws_iam_user.example.path
}

output "user_unique_id" {
  value = data.aws_iam_user.example.unique_id
}
