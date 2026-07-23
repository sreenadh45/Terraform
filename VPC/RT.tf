resource "aws_route_table" "myrt1" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "Public-Route-Table"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

}

resource "aws_route_table" "myrt2" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = "Private-Route-Table"
  }
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.myngw.id
}
}