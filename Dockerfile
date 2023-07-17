FROM ubuntu:latest

# Install apt-utils
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

# Install wget, unzip, and other necessary packages
RUN apt-get install -y wget unzip

# Copy the shell script to the container
COPY script.sh /script.sh

# Set the script as executable
RUN chmod +x /script.sh

# Run the shell script when the container starts
CMD ["/script.sh"]
