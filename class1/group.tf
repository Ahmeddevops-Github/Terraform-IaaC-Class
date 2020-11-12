resource "aws_iam_group" "Terraform-Resource-Group-Developers" {
  name = "Terraform-Group-Developers"
  path = "/"
}

resource "aws_iam_group_membership" "Terraform-Resource-Group-Developers_Team" {
  name = "Terraform-Group-Developers_Membership"

  users = [
    "${aws_iam_user.Terraform-Resource-User-Created-Name_Tim.name}",
  ]

  group = "${aws_iam_group.Terraform-Resource-Group-Developers.name}"
}
