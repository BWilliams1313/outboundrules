# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "app1" {
  cidr_block = "10.35.0.0/16"

  tags = {
    Name = "app1"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}