resource "aws_iam_policy" "user" {
  name   = "${var.environment}-website-policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "cloudfront:CreateInvalidation",
      "Resource": [
        "${module.cdn.cf_arn}"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "user" {
  user       = data.terraform_remote_state.env.outputs.iam_user_name
  policy_arn = aws_iam_policy.user.arn
}
