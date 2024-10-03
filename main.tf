provider "aws" {
  region = "ap-south-1"
}

# Setup a new VPC for the EC2 instance

resource "aws_vpc" "tinyt_vpc" {
    cidr_block = "150.45.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "tiny-vpc"
      }
  }

# Declare subnets within the VPC to place the EC2 instance in
resource "aws_subnet" "tinyt_subnet01" {
  vpc_id     = aws_vpc.tinyt_vpc.id
  cidr_block = "150.45.0.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "tiny_subnet01"
  }
}
resource "aws_subnet" "tinyt_subnet02" {
  vpc_id     = aws_vpc.tinyt_vpc.id
  cidr_block = "150.45.10.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "tiny_subnet02"
  }
}

resource "aws_internet_gateway" "tinyt_gw" {
  vpc_id = aws_vpc.tinyt_vpc.id

  tags = {
    Name = "tiny_gw"
  }
}
