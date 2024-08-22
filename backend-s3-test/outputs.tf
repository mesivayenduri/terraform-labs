output "db_hostname" {
    value = aws_db_instance.mytestdb.address
}

output "db_name" {
    value = aws_db_instance.mytestdb.db_name
}

output "endpoint" {
    value = aws_db_instance.mytestdb.endpoint
}