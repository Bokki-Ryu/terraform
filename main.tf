resource "docker_image" "n8n" {
  name         = "docker.n8n.io/n8nio/n8n:latest"
  keep_locally = true
}

resource "docker_volume" "n8n_data" {
  name = "n8n_data"
}

resource "docker_container" "n8n" {
  name    = "n8n"
  image   = docker_image.n8n.image_id

  ports {
    external = 5678
    internal = 5678
  }

  volumes {
    volume_name = "n8n_data"
    container_path = "/home/node/.n8n"
  }
}