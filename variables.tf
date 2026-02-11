variable "n8n_docker" {
  description = "Configuration about docker"
  type        = map(string)
  default     = {
    image = "docker.n8n.io/n8nio/n8n:latest"
    container_name = "n8n"
    volume_name = "n8n_data"
  }
}
variable "ollama_docker" {
  description = "Configuration about docker"
  type        = map(string)
  default     = {
    image = "ollama/ollama"
    container_name = "ollama"
    volume_name = "ollama_data"
  }
}