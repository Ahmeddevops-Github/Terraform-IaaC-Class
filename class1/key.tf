resource "aws_key_pair" "Terraform-Resource-Key-Pair" {
  key_name   = "Terraform-Key-Pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
