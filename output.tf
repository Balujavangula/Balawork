
# output "web1_public_IP" {
#   value = aws_instance.web-instance.public_ip
# }

# output "db_endpoint" {
#   value = aws_db_instance.db.endpoint
# }

output "vpc_id" {
  value = aws_vpc.primary_vpc.id
}

output "app1-subnet-id" {
  value = aws_subnet.subnets[0].id
}

output "app2-subnet-id" {
  value = aws_subnet.subnets[1].id
}

output "db1-subnet-id" {
  value = aws_subnet.subnets[2].id
}

output "db2-subet-id" {
  value = aws_subnet.subnets[3].id
}

output "app_security_group_id" {
  value = aws_security_group.app-sg.id
}

output "db_security_group_id" {
  value = aws_security_group.dbsg.id
}

# output "web_url" {
#   value = format("http://%s", aws_instance.web-instance.public_ip)
# }