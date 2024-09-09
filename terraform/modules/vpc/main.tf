resource "aws_vpc" "TEST-VPC1" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "TEST-VPC1-SUB1" {
  vpc_id = aws_vpc.TEST-VPC1.id

  availability_zone = var.sub_az
  cidr_block        = var.sub_cidr

  tags = {
    Name = var.sub_name
  }
}