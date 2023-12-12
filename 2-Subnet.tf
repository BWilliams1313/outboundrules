#These are   for  public

resource "aws_subnet" "public-eu-south-2a" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.35.1.0/24"
  availability_zone       = "eu-south-2a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-south-2a"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}

resource "aws_subnet" "public-eu-south-2b" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.35.2.0/24"
  availability_zone       = "eu-south-2b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-south-2b"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}


resource "aws_subnet" "public-eu-south-2c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.35.3.0/24"
  availability_zone       = "eu-south-2c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-eu-south-2c"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}

#these are for private
resource "aws_subnet" "private-eu-south-2a" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.35.11.0/24"
  availability_zone = "eu-south-2a"

  tags = {
    Name    = "private-eu-south-2a"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}

resource "aws_subnet" "private-eu-south-2b" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.35.12.0/24"
  availability_zone = "eu-south-2b"

  tags = {
    Name    = "private-eu-south-2b"
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}


resource "aws_subnet" "private-eu-south-2c" {
  vpc_id            = aws_vpc.app1.id
  cidr_block        = "10.35.13.0/24"
  availability_zone = "eu-south-2c"

  tags = {
    Name    = "private-eu-south-2c "
    Service = "application1"
    Owner = "Bryce L. Williams"
    Firm = "Element Technology Consulting"
  }
}