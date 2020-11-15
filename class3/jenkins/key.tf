resource "aws_key_pair" "Terraform-Class_3-Resource-Jenkins-Key-Pair" {
  key_name   = "Terraform-Class_3-Jenkins-Key-Pair"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
