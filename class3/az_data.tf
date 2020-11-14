data "aws_availability_zones" "Terraform_AZ" {
  state = "available"
}

output "Availability Zone" {
  value = "${data.aws_availability_zones.Terraform_AZ.names}"
}
