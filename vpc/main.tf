provider "aws" {
  region = var.region
}

# Setup a new VPC
resource "aws_vpc" "config_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.vpc_name
  }
}

# Declare subnets within the VPC
resource "aws_subnet" "config_subnet01" {
  vpc_id            = aws_vpc.config_vpc.id
  cidr_block        = var.subnet01_cidr
  availability_zone = var.availability_zone1

  tags = {
    Name = var.subnet01_name
  }
}

resource "aws_subnet" "config_subnet02" {
  vpc_id            = aws_vpc.config_vpc.id
  cidr_block        = var.subnet02_cidr
  availability_zone = var.availability_zone2

  tags = {
    Name = var.subnet02_name
  }
}

resource "aws_internet_gateway" "config_igw" {
  vpc_id = aws_vpc.config_vpc.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_route_table" "config_rt" {
  vpc_id = aws_vpc.config_vpc.id

  route {
    cidr_block = var.route_cidr
    gateway_id = aws_internet_gateway.config_igw.id
  }

  tags = {
    Name = var.route_table_name
  }
}

resource "aws_route_table_association" "config_attach_rt" {
  subnet_id      = aws_subnet.config_subnet01.id
  route_table_id = aws_route_table.config_rt.id
}
