#Subnet creation
resource "aws_subnet" "pub_sub" {
    vpc_id = "${aws_vpc.vpc1.id}"
  cidr_block = "${var.public_subnet_cidr}"
  availability_zone = "${var.availablity_zone}"
tags{
    name = "public subnet tag"
}
}
resource "aws_subnet" "pvt_sub" {
  vpc_id = "${aws_vpc.vpc1.id}"
  cidr_block = "${var.private_subnet_cidr}"
  availability_zone = "us-east-1b"

  tags {
      name = "private subnet tag"
  }
}
#----------define Internet Gateway
resource "aws_internet_gateway" "IG1" {
  vpc_id = "${aws_vpc.vpc1.id}"
  tags 
  {
      name = "Internet Gateway"
  }
}
#----------define route table
resource "aws_route_table" "RT1" {
  vpc_id = "${aws_vpc.vpc1.id}"
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.IG1.id}"
  }
  tags 
  {
      name = "Route table"
  }
}
#--------Assign Route table to the public subnet------
resource "aws_route_table_association" "public_rt" {
  subnet_id = "${aws_subnet.pub_sub.id}"
  route_table_id = "${aws_route_table.RT1.id}"
}
