FROM ollama/ollama:latest

# Start Ollama server in background and pull model
RUN /bin/sh -c "ollama serve & sleep 5 && ollama pull granite3.1-micro"

EXPOSE 11434

CMD ["serve"]
