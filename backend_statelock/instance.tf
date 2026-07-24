resource "aws_instance" "my_instance" {
  ami           = "ami-078fe7ff43e10cf8c"
  instance_type = "t3.micro"
  key_name      = "dhurandhar"
  root_block_device {
    volume_size = 10
  }
    availability_zone = "us-east-2a"
    tags = {
      Name = "dev_instance"
    }
    vpc_security_group_ids = [aws_security_group.my_security_group.id]
}