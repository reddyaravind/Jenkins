# Define the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Data source to fetch all IAM users
data "aws_iam_users" "all_users" {}

# Output the list of IAM user names
output "iam_user_names" {
  value = data.aws_iam_users.all_users.users[*].name
}
