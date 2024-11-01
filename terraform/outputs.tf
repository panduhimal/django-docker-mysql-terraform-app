# MySQL ouputs

output "mysql_image_id" {
  description = "The ID of the MySQL image"
  value       = docker_image.mysql.id
}

output "mysql_container_id" {
  description = "The ID of the MySQL container"
  value       = docker_container.mysql_db.id
}

# Django app outputs

output "django_app_image_id" {
  description = "The ID of the Django app image"
  value       = docker_image.django_app.id
}

output "django_app_container_id" {
  description = "The ID of the Django app container"
  value       = docker_container.webapp.id
}

