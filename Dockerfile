FROM ubuntu:22.04

# Install dependencies
RUN apt-get update && apt-get install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose the port Ollama uses
EXPOSE 11434

# Start Ollama and preload a model
CMD ["sh", "-c", "ollama serve & sleep 5 && ollama run llama3"]
