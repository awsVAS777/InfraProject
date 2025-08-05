resource "aws_vpc" "myVPC" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-VPC"   #DEV-VPC
  }
}
resource "aws_subnet" "mySubnet" {
  vpc_id     = aws_vpc.myVPC.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "${var.env}-Subnet"     
     }
}
output "mySubnetID"{
  value = aws_subnet.mySubnet.id
}
