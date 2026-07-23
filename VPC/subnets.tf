resource "aws_subnet" "mysubnet1" {
  tags = {
    Name = "public-Subnet-1"
  }
  vpc_id = aws_vpc.myvpc.id
  availability_zone = "us-east-2a"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "mysubnet2" {
  tags = {
    Name = "public-Subnet-2"
  }
  vpc_id = aws_vpc.myvpc.id
  availability_zone = "us-east-2b"
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "mysubnet3" {
  tags = {
    Name = "private-Subnet-1"
  }
  vpc_id = aws_vpc.myvpc.id
  availability_zone = "us-east-2a"
  cidr_block = "10.0.3.0/24"
}

resource "aws_subnet" "mysubnet4" {
  tags = {
    Name = "private-Subnet-2"
  }
  vpc_id = aws_vpc.myvpc.id
  availability_zone = "us-east-2b"
  cidr_block = "10.0.4.0/24"
}