# Dockerfile for Judge0 deployment

# Use a base image with the necessary dependencies installed
FROM ubuntu:latest

# Update the package manager and install dependencies
RUN apt-get update && apt-get install -y \
    unzip \
    wget \
    docker.io \
    docker-compose

# Download and extract the Judge0 release archive
RUN wget https://github.com/judge0/judge0/releases/download/v1.13.0/judge0-v1.13.0.zip && \
    unzip judge0-v1.13.0.zip && \
    rm judge0-v1.13.0.zip

# Navigate to the extracted directory
WORKDIR /judge0-v1.13.0

# Run all services and wait for initialization
RUN docker-compose up -d db redis && \
    sleep 10 && \
    docker-compose up -d && \
    sleep 5

# Expose the necessary ports (if required)
# EXPOSE <port>

# Provide instructions on how to access Judge0
# Replace "<IP ADDRESS OF YOUR SERVER>" with the actual IP address or hostname of your server
CMD echo "Your instance of Judge0 CE v1.13.0 is now available at http://<IP ADDRESS OF YOUR SERVER>:2358."
