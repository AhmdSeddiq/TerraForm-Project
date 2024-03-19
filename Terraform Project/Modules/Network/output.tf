
#Private Subnet Output
output "private" {
  value = aws_subnet.private.id
}

#Private Public Output
output "public" {
  value = aws_subnet.public.id
}

#Private VPC Output
output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

#Private Route Output
output "route_table_id" {
  value = aws_route_table.public.id
}