variable "docker" {
  description = "Configuration about docker"
  type        = map(string)
  default     = {
    image = "docker.n8n.io/n8nio/n8n:latest"
    container_name = "n8n"
    volume_name = "n8n_data"
  }
}