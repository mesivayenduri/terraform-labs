variable "db_password" {
    type = string
    default = "admin123"
    sensitive = true
}

resource "local_file" "credentials" {
    content = var.db_password
    filename = "credentials.txt"
}

output "show_password" {
    value = local_file.credentials.content
    sensitive = true
}