FROM ollama/ollama:latest

COPY Modelfile /Modelfile

# Build model inside the container
RUN ollama create hackmodel -f /Modelfile

EXPOSE 11434

# Start Ollama normally
CMD ["serve"]
