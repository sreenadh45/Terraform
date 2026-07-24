resource "aws_instance" "my_instance" {
    ami           = "ami-078fe7ff43e10cf8c"
    instance_type = "t3.micro"
    tags = {
        Name = "MyInstance"
    }
    key_name = "dhurandhar"
    availability_zone = "us-east-2a"
  #meta argument
  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes        = [ami, instance_type]
  }
}

resource "aws_instance" "dev_instance" {
    provider      = aws.mumbai
    ami           = "ami-0b1ed96948adabcd9"
    instance_type = "t3.micro"
    tags = {
        Name = "DevInstance"
    }
    key_name = "ram"
    availability_zone = "ap-south-1a"
  
}