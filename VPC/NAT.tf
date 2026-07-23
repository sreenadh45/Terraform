resource "aws_nat_gateway" "myngw" {
    tags = {
        Name = "Terraform-NAT-GW"
    }
    availability_mode = "regional"
    vpc_id = aws_vpc.myvpc.id
    connectivity_type = "public"
    
} 