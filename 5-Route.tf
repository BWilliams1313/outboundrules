resource "aws_route_table" "private" {
  vpc_id = aws_vpc.app1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      nat_gateway_id             = aws_nat_gateway.nat.id
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      gateway_id                 = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "private"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.app1.id

  route = [
    {
      cidr_block                 = "0.0.0.0/0"
      gateway_id                 = aws_internet_gateway.igw.id
      nat_gateway_id             = ""
      carrier_gateway_id         = ""
      destination_prefix_list_id = ""
      egress_only_gateway_id     = ""
      instance_id                = ""
      ipv6_cidr_block            = ""
      local_gateway_id           = ""
      network_interface_id       = ""
      transit_gateway_id         = ""
      vpc_endpoint_id            = ""
      vpc_peering_connection_id  = ""
    },
  ]

  tags = {
    Name = "public"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}

resource "aws_route_table_association" "private-eu-south-2a" {
  subnet_id      = aws_subnet.private-eu-south-2a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-eu-south-2b" {
  subnet_id      = aws_subnet.private-eu-south-2b.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private-eu-south-2c" {
  subnet_id      = aws_subnet.private-eu-south-2c.id
  route_table_id = aws_route_table.private.id
}


#public

resource "aws_route_table_association" "public-eu-south-2a" {
  subnet_id      = aws_subnet.public-eu-south-2a.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-eu-south-2b" {
  subnet_id      = aws_subnet.public-eu-south-2b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-eu-south-2c" {
  subnet_id      = aws_subnet.public-eu-south-2c.id
  route_table_id = aws_route_table.public.id
}