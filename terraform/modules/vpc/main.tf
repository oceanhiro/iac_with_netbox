resource "aws_vpc" "TEST-VPC1" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = var.vpc-name
  }
}