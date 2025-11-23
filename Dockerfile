FROM ollama/ollama:latest

EXPOSE 11434

# Override ENTRYPOINT to use sh instead of ollama
ENTRYPOINT [ "/bin/sh", "-c" ]

# Start Ollama server + pull model + keep running
CMD "ollama serve & sleep 10 && ollama pull granite3.1-tiny && wait"
