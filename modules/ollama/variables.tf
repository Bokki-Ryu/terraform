variable "docker" {
  description = "Configuration about docker"
  type        = map(string)
  default     = {
    image = "ollama/ollama"
    container_name = "ollama"
    volume_name = "ollama_data"
  }
}