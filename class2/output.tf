output "DETAILS" {
  value = "${aws_key_pair.Terraform-Class_2-Resource-Key-Pair.key_name}, ${aws_instance.Terraform-Class_2-Instance-Created.id}, ${aws_instance.Terraform-Class_2-Instance-Created.id}"
}

output "ID" {
  value = "${aws_instance.Terraform-Class_2-Instance-Created.id}"
}

output "AMI" {
  value = "${aws_instance.Terraform-Class_2-Instance-Created.ami}"
}

output "ARN" {
  value = "${aws_instance.Terraform-Class_2-Instance-Created.arn}"
}

output "AZ" {
  value = "${aws_instance.Terraform-Class_2-Instance-Created.availability_zone}"
}

output "PIP" {
  value = "${aws_instance.Terraform-Class_2-Instance-Created.public_ip}"
}

output "DNS" {
  value = "${aws_route53_record.www.name}"
}

output "my_output" {
  value = "my message"
}
