# Create a Docker network
resource "docker_network" "app_network" {
  name = "app_network"
}

# Create a MySQL Docker image
resource "docker_image" "mysql" {
  name         = var.mysql_image
  keep_locally = true
}

# Create a MySQL container
resource "docker_container" "mysql_db" {
  name  = var.mysql_db_name
  image = docker_image.mysql.image_id

  ports {
    internal = var.mysql_port
    external = 3306
  }

  restart = "always"

  networks_advanced {
    name = docker_network.app_network.name
  }

  env = [
    "MYSQL_ROOT_PASSWORD=${var.mysql_root_password}",
    "MYSQL_DATABASE=${var.mysql_db_name}",
    "MYSQL_USER=${var.mysql_user}",
    "MYSQL_PASSWORD=${var.mysql_password}"
  ]
}
