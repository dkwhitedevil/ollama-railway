FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# When the container starts, pull the model THEN start server
CMD /bin/sh -c "\
    ollama serve & \
    sleep 10 && \
    ollama pull granite3.1-micro && \
    wait"
