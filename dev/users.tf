resource "aws_iam_user" "deployer" {
  name = "principal1"
}

resource "aws_iam_access_key" "deployer" {
  user = aws_iam_user.deployer.name
}
