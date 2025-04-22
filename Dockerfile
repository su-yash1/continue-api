FROM ollama/ollama:latest

# Preload your model (optional, but nice for faster startup)
RUN ollama pull codellama:7b

# Expose default port
EXPOSE 11434

# Set CPU backend explicitly (optional, but recommended)
ENV OLLAMA_NUM_THREADS=4

# Start Ollama
CMD ["ollama", "serve"]
