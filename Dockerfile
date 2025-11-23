FROM ollama/ollama:latest

# Pull a small model that fits Railway free tier
RUN ollama pull granite3.1-micro

EXPOSE 11434

CMD ["serve"]
