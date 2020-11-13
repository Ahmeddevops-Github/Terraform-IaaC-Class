resource "aws_key_pair" "Terraform-Class_2-Resource-Key-Pair" {
  key_name   = "Terraform-Class_2-Key-Pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
