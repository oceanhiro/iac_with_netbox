resource "aws_vpc" "TEST-VPC1" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "TEST-VPC1"
  }
}