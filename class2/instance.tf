resource "aws_instance" "Terraform-Class_2-Instance-Created" {
  ami           = "ami-02354e95b39ca8dec"
  instance_type = "t2.micro"

  associate_public_ip_address = "true"
  key_name                    = "${aws_key_pair.Terraform-Class_2-Resource-Key-Pair.key_name}"
  user_data                   = "${file("userdata_file.sh")}"
  vpc_security_group_ids      = ["${aws_security_group.Terraform-Class_2-Security-Group.id}"]
  availability_zone           = "us-east-1a"
}


# resource "aws_instance" "Terraform-Class_2-Instance-Created_2" {
#     ami = "ami-02354e95b39ca8dec"
# 	instance_type = "t2.micro"
# }

resource "aws_ebs_volume" "Terraform-Class_2-EBS-Created" {
  availability_zone = "us-east-1a"
  size              = 100
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.Terraform-Class_2-EBS-Created.id}"
  instance_id = "${aws_instance.Terraform-Class_2-Instance-Created.id}"
}
