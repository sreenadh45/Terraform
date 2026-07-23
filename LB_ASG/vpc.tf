resource "aws_vpc" "main" {
    tags = {
        Name = "Terraform-VPC"
    }
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true
}

resource "aws_subnet" "public1" {
    tags = {
        Name = "Terraform-Public-Subnet1"
    }
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "us-east-2a"
}

resource "aws_subnet" "public2" {
    tags = {
        Name = "Terraform-Public-Subnet2"
    }
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-2b"
    map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "myigw" {
    tags = {
        Name = "Terraform-IGW"
    }
    vpc_id = aws_vpc.main.id
}

resource "aws_route_table" "myrt" {
    tags = {
        Name = "Terraform-Route-Table"
    }
    vpc_id = aws_vpc.main.id
    route {
        gateway_id = aws_internet_gateway.myigw.id
        cidr_block = "0.0.0.0/0"
    }
}

resource "aws_route_table_association" "myrtassoc1" {
    subnet_id = aws_subnet.public1.id
    route_table_id = aws_route_table.myrt.id
  
}

resource "aws_route_table_association" "myrtassoc2" {
    subnet_id = aws_subnet.public2.id
    route_table_id = aws_route_table.myrt.id
  
}