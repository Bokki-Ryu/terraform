resource "docker_image" "ollama" {
  name         = var.docker.image
  keep_locally = true
}

resource "docker_volume" "ollama_data" {
  name = var.docker.volume_name
}

resource "docker_container" "ollama" {
  name    = var.docker.container_name
  image   = docker_image.ollama.image_id

  ports {
    external = 11434
    internal = 11434
  }

  volumes {
    volume_name = docker_volume.ollama_data.name
    container_path = "/root/.ollama"
  }
}