#!/bin/bash

# Step 1: Install Docker and Docker Compose
# Make sure to update the package manager commands based on your server's operating system.

# Example for Ubuntu/Debian-based systems:
apt update
apt install -y docker.io docker-compose

# Step 2: Download and extract the Judge0 release archive
wget https://github.com/judge0/judge0/releases/download/v1.13.0/judge0-v1.13.0.zip
unzip judge0-v1.13.0.zip
sleep 5s
ls -la
sleep 5s
cd judge0-v1.13.0

# Step 3: Run all services and wait for initialization
# docker-compose up -d db redis
# sleep 10s
# docker-compose up -d
# sleep 5s
