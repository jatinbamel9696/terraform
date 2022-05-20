output "vpc_details" {
  value = aws_vpc.vpc.id
}

output "internet_gateway" {
  value = aws_internet_gateway.ig.id

}
