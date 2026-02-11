module "n8n" {
  source = "./modules/n8n"
  docker = {
    image = var.n8n_docker.image
    container_name = var.n8n_docker.container_name
    volume_name = var.n8n_docker.volume_name
  }
}
module "ollama" {
  source = "./modules/ollama"
  docker = {
    image = var.ollama_docker.image
    container_name = var.ollama_docker.container_name
    volume_name = var.ollama_docker.volume_name
  }
}
