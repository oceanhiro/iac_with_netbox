resource "aws_instance" "test-vpc1-sub1-vm1" {
  ami           = "ami-04d6e43069fd7e366"
  instance_type = "t2.micro"
  subnet_id     = var.sub_id

  tags = {
    Name = var.vm_name
  }
}