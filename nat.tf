resource "aws_eip" "elastic_ip" {
}

resource "aws_nat_gateway" "private_nat" {
  allocation_id = aws_eip.elastic_ip.id
  subnet_id = aws_subnet.subnets[0].id
  tags = {
    Name = "NatForDB"
  }

}

resource "aws_route_table" "Nat_route_table" {
  vpc_id = aws_vpc.primary_vpc.id
  route {
    cidr_block = local.anywhere
    gateway_id = aws_nat_gateway.private_nat.id  
  } 
  tags = {
    Name = "Nat-Route-table"
  }
}

resource "aws_route_table_association" "assicuate_routetable_to_privatesubnet" {
  subnet_id = aws_subnet.subnets[2].id
  route_table_id = aws_route_table.Nat_route_table.id
}



