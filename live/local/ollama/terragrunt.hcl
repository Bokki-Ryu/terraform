terraform {
  source = "../../../modules/ollama"
}

inputs = {
  docker = {
    image = "ollama/ollama"
    container_name = "ollama"
    volume_name = "ollama_data"
  }
}