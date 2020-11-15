resource "aws_instance" "Terraform-Created-Centos_Instance" {
  ami                    = "${data.aws_ami.Terraform-Created-Centos_ami.id}"
  vpc_security_group_ids = ["${aws_security_group.Terraform-Class_3-Security-Group.id}"]
  key_name               = "${aws_key_pair.Terraform-Class_3-Resource-Jenkins-Key-Pair.key_name}"
  instance_type          = "t3.large"

  tags = {
    Name = "Terraform-Created-Centos_EC2"
  }
}

resource "null_resource" "Terraform-Jenkins_Remote" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.Terraform_Provisioner.public_ip}"
    }

    inline = [
      "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
      "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
      "sudo yum upgrade -y",
      "sudo yum install jenkins java-1.8.0-openjdk-devel -y",
      "sudo systemctl daemon-reload",
    ]
  }
}
