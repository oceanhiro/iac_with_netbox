resource "aws_vpc" "TEST-VPC1" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}