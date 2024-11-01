# MySQL ouputs

output "mysql_image_id" {
  description = "The ID of the MySQL image"
  value       = docker_image.mysql.id
}

output "mysql_container_id" {
  description = "The ID of the MySQL container"
  value       = docker_container.mysql_db.id
}

