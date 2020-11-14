resource "aws_instance" "Terraform-Created-ubuntu_Insatnce" {
  ami = "${data.aws_ami.Terraform-Created-Ubuntu_ami.id}"

    availability_zone = "${data.aws_availability_zones.Terraform_AZ.names[2]}"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Created-Ubuntu_EC2"
  }
}

resource "aws_instance" "Terraform-Created-Centos_Instance" {
  ami = "${data.aws_ami.Terraform-Created-Centos_ami.id}"

  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Created-Centos_EC2"
  }
}
