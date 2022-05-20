/*====
The VPC
======*/

resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags                 = merge(var.tags, { Name = "pfe-vpc-${var.region_code}-common" })
}


/* Internet gateway for the public subnet */
resource "aws_internet_gateway" "ig" {
  vpc_id     = aws_vpc.vpc.id
  tags       = merge(var.tags, { Name = "pfe-igw-${var.region_code}" })
  depends_on = [aws_vpc.vpc]
}
