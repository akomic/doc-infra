resource "aws_iam_user" "deployer" {
  name = "principal2"
}

resource "aws_iam_access_key" "deployer" {
  user = aws_iam_user.deployer.name
}
