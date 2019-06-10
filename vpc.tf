#VPC
resource "aws_vpc" "vpc1" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support = true

  tags{
      name = "vpc new"
  }
}

