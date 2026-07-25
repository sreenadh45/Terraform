resource "aws_instance" "my_instance" {
  tags = {
    Name = var.iname
  }
  ami           = var.ami
  instance_type = var.itype
  key_name      = var.key
  root_block_device {
    volume_size = var.volsize
  }
}