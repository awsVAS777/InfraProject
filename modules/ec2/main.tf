resource "aws_instance" "myEC2" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  count = var.instance_count

  tags = {
    Name = "${var.env}-EC2-${count.index}"
  }
}