terraform {
  source = "../../../modules/n8n"
}

inputs = {
  docker = {
    image = "docker.n8n.io/n8nio/n8n:latest"
    container_name = "n8n"
    volume_name = "n8n_data"
  }
}