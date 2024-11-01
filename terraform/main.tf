# Create a Docker network
resource "docker_network" "app_network" {
  name = "app_network"
}
