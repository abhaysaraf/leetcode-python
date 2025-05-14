# Use official slim/lightweight Python 3.11 image https://hub.docker.com/_/python.
FROM python:3.11-slim 

# Sets the working directory inside the container to /app.
WORKDIR /app

# Copies host's current directory '.' into the container's /app directory.
COPY . /app

# Default command (Not mandatory): launches Python REPL(Read-Eval-Print Loop)
# Ensures something meaningful happens when 'up' or 'run' is used.
CMD ["python3"]
