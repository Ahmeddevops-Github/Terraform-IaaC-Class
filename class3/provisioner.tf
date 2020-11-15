resource "aws_instance" "Terraform_Provisioner" {
  ami                         = "${data.aws_ami.Terraform-Created-Ubuntu_ami.id}"
  availability_zone           = "${data.aws_availability_zones.Terraform_AZ.names[2]}"
  associate_public_ip_address = true
  instance_type               = "t3.micro"
  key_name                    = "${aws_key_pair.Terraform-Class_3-Resource-Key-Pair.key_name}"

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform_Provisioner.public_ip}"
    }

    inline = [
      "sudo apt-get install apache2 -y",
      "sudo systemctl start apache2",
    ]
  }

  provisioner "file" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform_Provisioner.public_ip}"
    }

    source      = "README.md"
    destination = "/tmp/README.md"
  }
}
