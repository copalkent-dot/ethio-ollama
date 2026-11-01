FROM ollama/ollama:latest

# Expose the default Ollama API network port
EXPOSE 11434

# Force Ollama to bind to all available network interfaces inside the container
ENV OLLAMA_HOST=0.0.0.0

# Execute the serve command on runtime startup
ENTRYPOINT ["ollama", "serve"]

