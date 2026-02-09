resource "docker_image" "n8n" {
  name         = var.docker.image
  keep_locally = true
}

resource "docker_volume" "n8n_data" {
  name = var.docker.volume_name
}

resource "docker_container" "n8n" {
  name    = var.docker.container_name
  image   = docker_image.n8n.image_id

  ports {
    external = 5678
    internal = 5678
  }

  volumes {
    volume_name = docker_volume.n8n_data.name
    container_path = "/home/node/.n8n"
  }
}