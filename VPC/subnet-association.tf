resource "aws_route_table_association" "myrtassoc1" {
  subnet_id = aws_subnet.mysubnet1.id
  route_table_id = aws_route_table.myrt1.id
  
}
resource "aws_route_table_association" "myrtassoc2" {
  subnet_id = aws_subnet.mysubnet2.id
  route_table_id = aws_route_table.myrt1.id
  
}

resource "aws_route_table_association" "myrtassoc3" {
  subnet_id = aws_subnet.mysubnet3.id
  route_table_id = aws_route_table.myrt2.id
  
}

resource "aws_route_table_association" "myrtassoc4" {
  subnet_id = aws_subnet.mysubnet4.id
  route_table_id = aws_route_table.myrt2.id
  
}