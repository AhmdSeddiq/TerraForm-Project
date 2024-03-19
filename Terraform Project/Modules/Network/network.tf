

/*

Welcome in my Network..
  This is the seventh topic I have used:
                            1- Choosing randam numbers for naming 
                            2- Creating VPC
                            3- Creating Public Subnet
                            4- Creating Private Subnet
                            5- Creating Gateway
                            6- Creating Route Table
                            7- Association 


*/


#1- Choosing randam numbers for naming 
resource "random_id" "id" {
  byte_length = 1
}

#2- Creating VPC
resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_variable
  tags = {
    Name = "VPC-${random_id.id.hex}"
  }
}

#3- Creating Public Subnet
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.public_subnet
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_Subnet-${random_id.id.hex}"
  }
}

#4- Creating Private Subnet
resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.private_subnet
  tags = {
    Name = "Private_Subnet-${random_id.id.hex}"
  }
}

#5- Creating Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "Gateway-${random_id.id.hex}"
  }
}

#6- Creating Route Table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Route Table-${random_id.id.hex}"
  }
}

#7- Association 
resource "aws_route_table_association" "public" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.public.id
}

