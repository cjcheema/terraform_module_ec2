resource "aws_iam_role" "ssm_role" {
  name = var.ssm_role_name
  assume_role_policy = var.ssm_assume_role_json
}

resource "aws_iam_role_policy_attachment" "ssm_attach" {
  role       = aws_iam_role.ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ssm_profile" {
  name = var.ssm_profile_name
  role = aws_iam_role.ssm_role.name
}