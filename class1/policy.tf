resource "aws_iam_policy" "Terraform-Resource-IAM_Policy" {
  name        = "Terraform-Resource-IAM_Test_Policy"
  path        = "/"
  description = "My Test Policy"

  policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
{
"Sid": "VisualEditor0",
"Effect": "Allow",
"Action": "ec2:*",
"Resource": "*"
}
]
}
EOF
}
