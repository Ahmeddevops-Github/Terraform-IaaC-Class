data "aws_ami" "Terraform-Created-Ubuntu_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

output "Ubuntu_AMI" {
  value = "${data.aws_ami.Terraform-Created-Ubuntu_ami.id}"
}

data "aws_ami" "Terraform-Created-Centos_ami" {
  most_recent = true
  owners      = ["679593333241"]

  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}

output "Centos_AMI" {
  value = "${data.aws_ami.Terraform-Created-Centos_ami.id}"
}
